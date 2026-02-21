using DAL.Base.Repo;
using DAL.Entity.Role;
using DAL.IRepo.Role;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repo.Role
{
    public class RoleRepo : BaseRepo<RoleEntity, RoleDto>, IRoleRepo
    {
    }
}
