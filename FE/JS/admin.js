// ==============================
// ADMIN - QUẢN LÍ DỰ ÁN
// ==============================

let projects = [];
function bindAdminSidebar(projectId) {

    document.getElementById("linkTrangChu").href =
        `../Trangchung/user.html?id=${projectId}`;

    document.getElementById("linkQuanLiDuAn").href =
        `quanliduan.html?id=${projectId}`;

    document.getElementById("linkQuanLiNguoiDung").href =
        `quanlinguoidung.html?id=${projectId}`;
    document.getElementById("LinkThongKe").href =
        `thongke.html?id=${projectId}`;
    document.getElementById("linkNhatKy").href =
        `nhatkihoatdong.html?id=${projectId}`;

    document.getElementById("linkCaiDat").href =
        `chinhsuatk.html?id=${projectId}`;

}
document.addEventListener("DOMContentLoaded", () => {
    bindAdminSidebar();
    // nếu có bảng dự án thì load
    if (document.getElementById("projectTableBody")) {
        loadProjects();
    }
    if (document.getElementById("userTableBody")) {
        loadUsers();
    }
});


// ==============================
// LOAD DANH SÁCH DỰ ÁN
// ==============================
async function loadProjects() {

    try {

        const res = await fetch(
            "http://localhost:6025/api/project/all"
        );

        if (!res.ok) {

            alert("Không thể tải danh sách dự án");
            return;

        }

        projects = await res.json();

        renderProjects(projects);

    }
    catch (err) {

        console.error("Load projects error:", err);

        alert("Không thể kết nối server");

    }

}


// ==============================
// RENDER TABLE
// ==============================
function renderProjects(list) {

    const tbody =
        document.getElementById("projectTableBody");

    if (!tbody) return;

    tbody.innerHTML = "";

    list.forEach(p => {

        const html = `
        <tr>

            <td>${p.id}</td>

            <td>${p.tieu_de}</td>

            <td>${p.mo_ta}</td>

            <td>
                ${new Date(p.ngay_tao)
                    .toLocaleDateString("vi-VN")}
            </td>

            <td>

                <a href="../Nguoidung/chitietduan.html?id=${p.id}"
                   class="btn btn-info btn-sm">

                    <i class="bi bi-eye"></i> Xem

                </a>

                <button class="btn btn-danger btn-sm"
                        onclick="adminDeleteProject('${p.id}')">

                    <i class="bi bi-trash"></i> Xóa

                </button>

            </td>

        </tr>
        `;

        tbody.insertAdjacentHTML(
            "beforeend",
            html
        );

    });

}


// ==============================
// DELETE PROJECT (ADMIN)
// ==============================
async function adminDeleteProject(projectId) {

    if (!confirm("Bạn chắc chắn muốn xóa dự án này?"))
        return;

    try {

        const res = await fetch(
            `http://localhost:6025/api/project/${projectId}`,
            {
                method: "DELETE"
            }
        );

        if (res.ok) {

            alert("Xóa dự án thành công");

            loadProjects();

        }
        else {

            alert("Xóa thất bại");

        }

    }
    catch (err) {

        console.error(err);

        alert("Không thể kết nối server");

    }

}

// ==============================
// LOAD DANH SÁCH NGƯỜI DÙNG
// ==============================

// ==============================
// LOAD DANH SÁCH USER
// ==============================

let users = [];

async function loadUsers() {

    try {

        const res = await fetch(
            "http://localhost:6025/api/users/all"
        );

        if (!res.ok) {
            alert("Không thể tải danh sách người dùng");
            return;
        }

        users = await res.json();
        console.log("Users:", users);

        renderUsers(users);

    }
    catch (err) {

        console.error("Load users error:", err);
        alert("Không thể kết nối server");

    }

}
// ==============================
// RENDER TABLE USERS
// ==============================

function renderUsers(list) {

    const tbody =
        document.getElementById("userTableBody");

    if (!tbody) return;

    tbody.innerHTML = "";

    list.forEach(u => {

        const roleText =
            u.loai_tai_khoan == 2
                ? "Admin"
                : "Người dùng";

        const html = 
        `
        <tr>

            <td>${u.id_nguoi_dung}</td>

            <td>${u.hoten}</td>

            <td>${u.tendangnhap}</td>

            <td>${u.email}</td>

            <td>${roleText}</td>
            
            <td>
                <button class="btn btn-danger btn-sm"
                        onclick="adminDeleteUser('${u.id_nguoi_dung}')">

                    <i class="bi bi-trash"></i> Xóa

                </button>
            </td>

        </tr>
        `;

        tbody.insertAdjacentHTML(
            "beforeend",
            html
        );

    });

}
// ==============================
// DELETE USER (ADMIN)
// ==============================

async function adminDeleteUser(userId) {

    console.log("Deleting user:", userId);

    if (!confirm("Bạn chắc chắn muốn xóa người dùng này?"))
        return;

    try {

        const res = await fetch(
            `http://localhost:6025/api/users/${userId}`,
            {
                method: "DELETE"
            }
        );

        if (res.ok) {

            alert("Xóa người dùng thành công");
            loadUsers();

        }
        else {

            const text = await res.text();
            console.log("Server response:", text);
            alert("Xóa thất bại");

        }

    }
    catch (err) {

        console.error(err);
        alert("Không thể kết nối server");

    }

}