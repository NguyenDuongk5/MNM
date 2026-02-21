using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.Project
{
    public class ProjectMemberDto
    {

        public Guid id_nguoi_dung { get; set; }

        public string ho_ten { get; set; }

        public string email { get; set; }

        public int trang_thai { get; set; }

        public string vai_tro { get; set; }

        public int cap_do_quyen { get; set; }

        public DateTime ngay_tham_gia { get; set; }

    }
}
