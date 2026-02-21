using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.Users
{   
    // Dùng cho Đăng ký
    public class RegisterRequest
    {
        public string hoten { get; set; }
        public string tendangnhap { get; set; }
        public string email { get; set; }
        public string matkhau { get; set; }
    }

    // Dùng cho Đăng nhập
    public class LoginRequest
    {
        public string tendangnhap { get; set; }
        public string matkhau { get; set; }
    }
}
