using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.Project
{
    public class JoinProjectDto
    {
        public Guid id_nguoi_dung { get; set; }
        public Guid id_du_an { get; set; }
        public int vai_tro { get; set; } = 0;
    }

}
