using DAL.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.Member
{
    [Table("thanh_vien_du_an")]
    public class MemberEntity 
    {
        [Key]
        public Guid id_thanh_vien_du_an {  get; set; }
        public Guid id_du_an { get; set; }
        public Guid id_nguoi_dung { get; set; }
        public Guid id_vaitro { get; set; }
        public int trang_thai {  get; set; }
        public DateTime ngay_tham_gia {  get; set; }

    }
}
