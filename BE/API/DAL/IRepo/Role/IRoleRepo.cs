using DAL.Base.IRepo;
using DAL.Entity.Role;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.IRepo.Role
{
    public interface IRoleRepo : IBaseRepo<RoleEntity, RoleDto>
    {
    }
}
