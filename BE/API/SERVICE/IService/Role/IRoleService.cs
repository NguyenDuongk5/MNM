using DAL.Entity.Role;
using SERVICE.Base.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.IService.Role
{
    public interface IRoleService : IBaseService<RoleEntity, RoleDto>
    {
    }
}
