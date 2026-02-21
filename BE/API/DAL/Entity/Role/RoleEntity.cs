using DAL.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.Role
{
    [Table("vai_tro")]
    public class RoleEntity 
    {
        [Key]

        public Guid id_vaitro { get; set; }
        public string ten_vaitro { get; set; }
        public int cap_do_quyenten { get; set; }


    }
}
