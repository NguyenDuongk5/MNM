// // =======================================
// // FILE: user-auth.js
// // ĐĂNG KÝ + ĐĂNG NHẬP NGƯỜI DÙNG
// // =======================================

// // Lấy danh sách user
// function getUsers() {
//     return JSON.parse(localStorage.getItem("users")) || [];
// }

// // Lưu danh sách user
// function saveUsers(users) {
//     localStorage.setItem("users", JSON.stringify(users));
// }

// // =====================
// // ĐĂNG KÝ
// // =====================
// function registerUser(fullname, username, email, password, repassword) {
//     const errorBox = document.querySelector(".text-danger");
//     errorBox.innerText = "";

//     if (!fullname || !username || !email || !password || !repassword) {
//         errorBox.innerText = "Vui lòng nhập đầy đủ thông tin!";
//         return false;
//     }

//     if (password !== repassword) {
//         errorBox.innerText = "Mật khẩu nhập lại không khớp!";
//         return false;
//     }

//     const users = getUsers();

//     // Kiểm tra trùng username hoặc email
//     const exists = users.find(
//         u => u.username === username || u.email === email
//     );

//     if (exists) {
//         errorBox.innerText = "Tên đăng nhập hoặc email đã tồn tại!";
//         return false;
//     }

//     // Lưu user mới
//     users.push({
//         fullname,
//         username,
//         email,
//         password
//     });

//     saveUsers(users);
//     alert("Đăng ký thành công! Vui lòng đăng nhập.");
//     return true;
// }

// // =====================
// // ĐĂNG NHẬP
// // =====================
// function loginUser(usernameOrEmail, password) {
//     const users = getUsers();

//     const user = users.find(
//         u =>
//             (u.username === usernameOrEmail || u.email === usernameOrEmail) &&
//             u.password === password
//     );

//     if (!user) {
//         alert("Tài khoản chưa tồn tại hoặc mật khẩu sai!");
//         return false;
//     }

//     localStorage.setItem(
//         "userLogin",
//         JSON.stringify({
//             username: user.username,
//             fullname: user.fullname,
//             email: user.email
//         })
//     );

//     return true;
// }

// // =====================
// // ĐĂNG XUẤT
// // =====================
// function logoutUser() {
//     localStorage.removeItem("userLogin");
//     window.location.href = "login.html";
// }

// // =====================
// // KIỂM TRA ĐĂNG NHẬP
// // =====================
// function checkLogin() {
//     const user = JSON.parse(localStorage.getItem("userLogin"));
//     if (!user) {
//         window.location.href = "login.html";
//     }
//     return user;
// }
