using DAL.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.Post.Entity
{
    [Table("bai_dang")]
    public class PostEntity 
    {
        [Key]
        public Guid id_bai_dang { get; set; }
        public Guid id_du_an { get; set; }
        public Guid id_tac_gia { get; set; }
        public string? ten_nguoi_dung { get; set; }
        public string tieu_de {  get; set; }
        public string noi_dung { get; set; }
        public string anh {  get; set; }
        public int trang_thai { get; set; } = 0;
        public DateTime ngay_tao { get; set; }
        public DateTime ngay_cap_nhat { get; set; } = DateTime.Now;
    }
}
