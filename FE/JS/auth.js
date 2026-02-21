// ==========================
// TÀI KHOẢN ADMIN CỐ ĐỊNH
// ==========================
const ADMIN_ACCOUNT = {
    username: "admin",
    password: "123456",
    fullname: "Administrator",
    role: "admin"
};

// ==========================
// USER STORAGE
// ==========================
function getUsers() {
    return JSON.parse(localStorage.getItem("users")) || [];
}

function saveUsers(users) {
    localStorage.setItem("users", JSON.stringify(users));
}

// ==========================
// ĐĂNG NHẬP
// ==========================
document.addEventListener("DOMContentLoaded", function () {
    const loginBtn = document.querySelector(".btn-login");
    if (!loginBtn) return;

    loginBtn.addEventListener("click", function () {
        const username = document.getElementById("tendangnhap").value.trim();
        const password = document.getElementById("password").value;

        if (!username || !password) {
            alert("Vui lòng nhập đầy đủ tài khoản và mật khẩu!");
            return;
        }

        // ===== ADMIN =====
        if (
            username === ADMIN_ACCOUNT.username &&
            password === ADMIN_ACCOUNT.password
        ) {
            localStorage.setItem("currentUser", JSON.stringify(ADMIN_ACCOUNT));
            window.location.href = "admin.html";
            return;
        }

        // ===== USER =====
        const users = getUsers();
        const user = users.find(
            u =>
                (u.username === username || u.email === username) &&
                u.password === password
        );

        if (!user) {
            alert("Tài khoản không tồn tại hoặc mật khẩu sai!");
            return;
        }

        localStorage.setItem("currentUser", JSON.stringify(user));
        window.location.href = "user.html";
    });
});

// ==========================
// ĐĂNG KÝ
// ==========================
function registerUser(e) {
    e.preventDefault();

    const fullname = document.querySelector("[name='fullname']").value.trim();
    const username = document.querySelector("[name='tendangnhap']").value.trim();
    const email = document.querySelector("[name='email']").value.trim();
    const password = document.querySelector("[name='password']").value;
    const repassword = document.querySelector("[name='repassword']").value;

    if (!fullname || !username || !email || !password) {
        alert("Vui lòng nhập đầy đủ thông tin!");
        return;
    }

    if (password !== repassword) {
        alert("Mật khẩu nhập lại không khớp!");
        return;
    }

    const users = getUsers();

    if (users.find(u => u.username === username || u.email === email)) {
        alert("Tài khoản hoặc email đã tồn tại!");
        return;
    }

    users.push({
        fullname,
        username,
        email,
        password,
        role: "user"
    });

    saveUsers(users);
    alert("Đăng ký thành công! Vui lòng đăng nhập.");
    window.location.href = "login.html";
}

// ==========================
// BẢO VỆ TRANG (ADMIN / USER)
// ==========================
function protectPage(role) {
    const currentUser = JSON.parse(localStorage.getItem("currentUser"));

    if (!currentUser || currentUser.role !== role) {
        window.location.href = "../login.html";
        return;
    }

    const nameEl =
        document.getElementById("adminName") ||
        document.getElementById("userName");

    if (nameEl) {
        nameEl.innerText = currentUser.fullname;
    }
}

// ==========================
// ĐĂNG XUẤT
// ==========================
function logout() {
    localStorage.removeItem("currentUser");
    window.location.href = "login.html";
}





// Lấy form đăng ký
const registerForm = document.querySelector("form");

registerForm.addEventListener("submit", function (event) {
    event.preventDefault(); // chặn reload

    const fullname = document.querySelector('input[name="fullname"]').value.trim();
    const username = document.querySelector('input[name="tendangnhap"]').value.trim();
    const email = document.querySelector('input[name="email"]').value.trim();
    const password = document.querySelector('input[name="password"]').value;
    const repassword = document.querySelector('input[name="repassword"]').value;

    // 1. Kiểm tra rỗng
    if (!fullname || !username || !email || !password || !repassword) {
        alert("Vui lòng nhập đầy đủ thông tin");
        return;
    }

    // 2. Kiểm tra email hợp lệ
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
        alert("Email không hợp lệ");
        return;
    }

    // 3. Kiểm tra độ dài mật khẩu
    if (password.length < 6) {
        alert("Mật khẩu phải có ít nhất 6 ký tự");
        return;
    }

    // 4. Kiểm tra nhập lại mật khẩu
    if (password !== repassword) {
        alert("Mật khẩu nhập lại không khớp");
        return;
    }

    // 5. Lấy danh sách user
    let users = JSON.parse(localStorage.getItem("users")) || [];

    // 6. Kiểm tra trùng username
    const isExist = users.some(user => user.username === username);
    if (isExist) {
        alert("Tên đăng nhập đã tồn tại");
        return;
    }

    // 7. Tạo user mới
    const newUser = {
        fullname,
        username,
        email,
        password,
        role: "user"
    };

    users.push(newUser);
    localStorage.setItem("users", JSON.stringify(users));

    alert("Đăng ký thành công!");

    // 8. Chuyển sang trang đăng nhập
    window.location.href = "login.html";
});



//quen mk

const input = document.querySelector("input");
const button = document.querySelector("button");
const form = document.querySelector("form");

// Tạo div thông báo
const alertBox = document.createElement("div");
form.insertBefore(alertBox, form.children[1]);

button.addEventListener("click", function () {
    const value = input.value.trim();

    if (!value) {
        showError("Vui lòng nhập tên đăng nhập hoặc email");
        return;
    }

    const users = JSON.parse(localStorage.getItem("users")) || [];

    // Tìm user theo username hoặc email
    const user = users.find(
        u => u.username === value || u.email === value
    );

    if (!user) {
        showError("Không tìm thấy tài khoản!");
        return;
    }

    // Che mật khẩu (abc***)
    const maskedPassword =
        user.password.substring(0, 3) + "***";

    showSuccess(`Gợi ý mật khẩu của bạn là: <strong>${maskedPassword}</strong>`);
});

function showSuccess(message) {
    alertBox.className = "alert alert-success";
    alertBox.innerHTML = message;
}

function showError(message) {
    alertBox.className = "alert alert-danger";
    alertBox.innerText = message;
}
