using DAL.Entity.Post.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entity.Post.Dto
{
    public class PostDto : PostEntity
    {
        public ModuleBuilder modified_date;
    }
}
