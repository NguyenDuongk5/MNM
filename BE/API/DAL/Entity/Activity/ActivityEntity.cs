using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.Activity
{
    [Table("hanh_dong_nguoi_dung")]
    public class ActivityEntity 
    {
        [Key]
        public Guid id { get; set; }
        public Guid id_nguoi_dung { get; set; }
        public string hanh_dong { get; set; }
        public DateTime thoi_gian { get; set; }

    }
}
