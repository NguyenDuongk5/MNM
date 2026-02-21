using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.Users
{
    public class UserProjectDto
    {
        public Guid id_du_an { get; set; }
        public string ten_du_an { get; set; }
        public string mo_ta { get; set; }
        public string mau { get; set; }
        public string nguoi_tao { get; set; }
        public string ten_vaitro { get; set; }
        public DateTime ngay_tham_gia { get; set; }
        public int trang_thai { get; set; }   

    }
}
