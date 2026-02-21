using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.Users
{
    [Table("nguoi_dung")]
    public class UsersEntity
    {
        [Key]
        public Guid id_nguoi_dung { get; set; }
        public string hoten { get; set; }
        public string tendangnhap { get; set; }
        public string email { get; set; }
        public string matkhau { get; set; }
        public string goi_y_mk {  get; set; }
        public int loai_tai_khoan { get; set; }
        public int trang_thai { get; set; }
        public DateTime ngay_tao { get; set; }
        public DateTime ngay_cap_nhat { get; set; }
    }
}
