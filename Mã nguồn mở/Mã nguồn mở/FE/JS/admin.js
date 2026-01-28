// // ==========================
// // KIỂM TRA ĐĂNG NHẬP ADMIN
// // ==========================
// const currentUser = JSON.parse(localStorage.getItem("currentUser"));

// if (!currentUser) {
//     // Chưa đăng nhập
//     window.location.href = "../login.html";
// }

// // // Không phải admin
// // if (currentUser.role !== "admin") {
// //     alert("Bạn không có quyền truy cập trang Admin!");
// //     window.location.href = "../login.html";
// // }

// // ==========================
// // HIỂN THỊ TÊN ADMIN
// // ==========================
// const adminName = document.getElementById("adminName");
// if (adminName) {
//     adminName.innerText = currentUser.fullname || currentUser.username;
// }

// // ==========================
// // ĐĂNG XUẤT
// // ==========================
// const logoutBtn = document.getElementById("logoutBtn");
// if (logoutBtn) {
//     logoutBtn.addEventListener("click", function (e) {
//         e.preventDefault();
//         localStorage.removeItem("currentUser");
//         window.location.href = "../login.html";
//     });
// }
