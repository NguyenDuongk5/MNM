using DAL.Entity.Post.Dto;
using DAL.Entity.Users;
using DAL.IRepo.Users;
using DAL.Repo.Users;
// --- Thêm 3 dòng này để hết lỗi JWT ---
using Microsoft.IdentityModel.Tokens;
using SERVICE.Base.Service;
using SERVICE.IService.Users;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.Service.Users
{
    public class UserService : BaseService<UsersEntity, UsersDto>, IUsersService
    {
        private readonly IUsersRepo _repo;
        public UserService(IUsersRepo repo) : base(repo)
        {
            _repo = repo;
        }

        // 1. Hàm Register và các hàm khác giữ nguyên logic của bạn
        public async Task<string> Register(RegisterRequest request)
        {
            var checkUser = await _repo.GetByUsername(request.tendangnhap);
            if (checkUser != null) return "Tên đăng nhập đã tồn tại";

            var entity = new UsersEntity
            {
                id_nguoi_dung = Guid.NewGuid(),
                hoten = request.hoten,
                tendangnhap = request.tendangnhap,
                email = request.email,
                matkhau = request.matkhau,
                ngay_tao = DateTime.Now,
                ngay_cap_nhat = DateTime.Now,
                trang_thai = 1
            };

            var rowsAffected = await _repo.Insert(entity);
            return rowsAffected > 0 ? "Thành công" : "Lỗi hệ thống khi lưu";
        }

        // 2. Sửa hàm Login trả về 'object' để chứa cả Token
        public async Task<object> Login(LoginRequest request)
        {
            var user = await _repo.GetByUsername(request.tendangnhap);

            if (user == null)
                return null;

            // So sánh plain text
            if (request.matkhau != user.matkhau)
                return null;

            return new
            {
                user = new UsersDto
                {
                    id_nguoi_dung = user.id_nguoi_dung,
                    hoten = user.hoten,
                    tendangnhap = user.tendangnhap
                }
            };
        }
        public async Task<List<UserProjectDto>> GetUserProjects(Guid userId)
        {
            return await _repo.GetProjectsByUserId(userId);
        }

        public async Task<bool> ForgotPassword(ForgotPasswordRequest request)
        {
            var user = await _repo.GetById(request.id);

            if (user == null)
                return false;

            // kiểm tra mật khẩu cũ
            if (user.matkhau.Trim() != request.matkhaucu.Trim())
                return false;


            user.matkhau = request.matkhaumoi;

            return await _repo.UpdatePassword(user);
        }


        public async Task<bool> UpdateUser(UsersDto dto)
        {
            if (dto == null || dto.id_nguoi_dung == Guid.Empty)
                return false;

            // Kiểm tra email trùng
            var emailExist = await _repo.IsEmailExist(dto.email, dto.id_nguoi_dung);
            if (emailExist)
                throw new Exception("Email đã tồn tại");

            var entity = new UsersEntity
            {
                id_nguoi_dung = dto.id_nguoi_dung,
                hoten = dto.hoten?.Trim(),
                email = dto.email?.Trim()
            };

            return await _repo.UpdateUser(entity);
        }
        public async Task<UsersEntity> GetById(Guid id)
        {
            return await _repo.GetById(id);
        }
        public async Task<List<PostDto>> GetPostsByUserId(Guid userId)
        {
            return await _repo.GetPostsByUserId(userId);
        }
        public async Task<bool> ApproveMember(Guid idNguoiDung, Guid idDuAn)
        {
            return await _repo.ApproveMember( idNguoiDung, idDuAn);
        }

    }
}