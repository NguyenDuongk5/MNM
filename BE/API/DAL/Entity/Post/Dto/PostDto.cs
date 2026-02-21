using DAL.Entity.Post.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.Post.Dto
{
    public class PostDto
    {
        public Guid id_bai_dang { get; set; }
        public Guid id_tac_gia {  get; set; }
        public string tieu_de { get; set; }
        public string noi_dung { get; set; }
        public string anh { get; set; }
        public string trang_thai { get; set; }
        public DateTime ngay_tao { get; set; }
        public string tac_gia { get; set; }
        public DateTime? ngay_cap_nhat { get; set; }
    }

}
