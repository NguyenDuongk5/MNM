using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.Notification
{
    [Table("thong_bao")]
    public class NotificationEntity
    {
        [Key]
        public Guid id { get; set; }
        public Guid id_nguoi_nhan { get; set; }
        public Guid id_nguon { get; set; }
        public Guid id_du_an { get; set; }
        public string noi_dung { get; set; }
        public DateTime ngay_tao { get; set; }
        public bool da_xem { get; set; } = false;
    }
}
