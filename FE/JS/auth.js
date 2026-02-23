// ==========================
// AUTH.JS - CLEAN VERSION
// ==========================

document.addEventListener("DOMContentLoaded", () => {
    const loginBtn = document.querySelector(".btn-login");
    if (loginBtn) loginBtn.addEventListener("click", login);

    const registerForm = document.querySelector("#registerForm");
    if (registerForm) registerForm.addEventListener("submit", registerUser);
});


// ==========================
// LOGIN
// ==========================
async function login() {
    const username = document.getElementById("tendangnhap").value.trim();
    const password = document.getElementById("password").value.trim();

    if (!username || !password) {
        alert("Vui lòng nhập đầy đủ tài khoản và mật khẩu!");
        return;
    }

    try {
        const res = await fetch("http://localhost:6025/api/users/login", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
                tendangnhap: username,
                matkhau: password
            })
        });

        const text = await res.text();
        let result;

        try {
            result = JSON.parse(text);
        } catch {
            alert("Server lỗi: " + text);
            return;
        }

        if (!res.ok) {
            alert(result.message || "Đăng nhập thất bại");
            return;
        }

        localStorage.setItem("currentUser", JSON.stringify(result));

        alert("Đăng nhập thành công!");
        window.location.href = "/HTML/Trangchung/user.html";

    } catch (err) {
        console.error(err);
        alert("Không thể kết nối server");
    }
}


// ==========================
// REGISTER
// ==========================
async function registerUser(e) {
    e.preventDefault();

    const hoten = document.querySelector('[name="fullname"]').value.trim();
    const tendangnhap = document.querySelector('[name="tendangnhap"]').value.trim();
    const email = document.querySelector('[name="email"]').value.trim();
    const matkhau = document.querySelector('[name="password"]').value;
    const repassword = document.querySelector('[name="repassword"]').value;

    if (!hoten || !tendangnhap || !email || !matkhau || !repassword) {
        alert("Vui lòng nhập đầy đủ thông tin");
        return;
    }

    if (matkhau.length < 6) {
        alert("Mật khẩu phải >= 6 ký tự");
        return;
    }

    if (matkhau !== repassword) {
        alert("Mật khẩu nhập lại không khớp");
        return;
    }

    try {
        const res = await fetch("http://localhost:6025/api/users/register", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
                hoten,
                tendangnhap,
                email,
                matkhau
            })
        });

        const text = await res.text();
        let result;

        try {
            result = JSON.parse(text);
        } catch {
            alert("Server lỗi: " + text);
            return;
        }

        if (!res.ok) {
            alert(result.message || "Đăng ký thất bại");
            return;
        }

        alert("Đăng ký thành công!");
        window.location.href = "/HTML/Trangchung/login.html";

    } catch (err) {
        console.error(err);
        alert("Không thể kết nối server");
    }
}


// ==========================
// PROTECT PAGE
// ==========================
function protectPage() {
    const user = localStorage.getItem("currentUser");
    if (!user) {
        window.location.href = "/HTML/Trangchung/login.html";
    }
}


// ==========================
// LOGOUT
// ==========================
function logout() {
    localStorage.removeItem("currentUser");
    window.location.href = "/HTML/Trangchung/login.html";
}
// ==========================
// GET CURRENT USER
// ==========================
function getCurrentUser() {

    const raw = localStorage.getItem("currentUser");

    if (!raw) return null;

    try {

        const data = JSON.parse(raw);

        return data.user || data;

    } catch {

        return null;

    }

}


// ==========================
// CHECK ADMIN (ADMIN CỐ ĐỊNH)
// ==========================
function isAdmin() {

    const user = getCurrentUser();

    if (!user) return false;

    // ID admin cố định của bạn
    return user.id_nguoi_dung === "11111111-1111-1121-1111-111111111111";

}


// ==========================
// CHECK USER thường
// ==========================
function isUser() {

    const user = getCurrentUser();

    if (!user) return false;

    return !isAdmin();

}
document.addEventListener("DOMContentLoaded", () => {

    if (isAdmin()) {

        const sidebar = document.getElementById("sidebarMenu");

        sidebar.innerHTML = `
            <a href="user.html">
                <i class="bi bi-house-door"></i> Trang chủ
            </a>

            <a href="../Admin/quanliduan.html" class="active">
                <i class="bi bi-kanban"></i> Quản lí dự án
            </a>

            <a href="../Admin/quanlinguoidung.html">
                <i class="bi bi-people"></i> Quản lí người dùng
            </a>

            <a href="../Admin/nhatkihoatdong.html">
                <i class="bi bi-journal-text"></i> Nhật ký hoạt động
            </a>

            <a href="../Admin/quanliphanquyen.html">
                <i class="bi bi-shield-lock"></i> Quản lí phân quyền
            </a>

            <a href="../Admin/chinhsuatk.html">
                <i class="bi bi-gear"></i> Cài đặt tài khoản
            </a>
        `;

    }

});
