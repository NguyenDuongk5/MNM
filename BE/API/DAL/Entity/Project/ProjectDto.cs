using DAL.Entity.Project;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.project
{
    public class ProjectDto
    {
        public Guid id { get; set; }

        public string tieu_de { get; set; }

        public string mo_ta { get; set; }

        public string mau { get; set; }

        public Guid id_nguoi_tao { get; set; }

        public string ten_nguoi_tao { get; set; }

        public DateTime ngay_tao { get; set; }

        public DateTime ngay_cap_nhat { get; set; }

        public int vai_tro { get; set; }
    }

}
