using DAL.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.Comment
{
    [Table("binh_luan")]
    public class CommentEntity 
    {
        [Key]
        public Guid id_binh_luan { get; set; }
        public Guid id_bai_dang { get; set; }
        public Guid id_nguoi_dung { get; set; }
        public string noi_dung { get; set; }
        public DateTime ngay_binh_luan { get; set; }
        public int trang_thai { get; set; }
    }
}
