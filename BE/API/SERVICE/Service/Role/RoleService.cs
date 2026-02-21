using DAL.Entity.Role;
using DAL.IRepo.Role;
using DAL.IRepo.Users;
using SERVICE.Base.Service;
using SERVICE.IService.Role;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.Service.Role
{
    public class RoleService : BaseService<RoleEntity, RoleDto>, IRoleService
    {
        private readonly IRoleRepo _repo;
        public RoleService(IRoleRepo repo) : base(repo)
        {
            _repo = repo;
        }
    }
}
