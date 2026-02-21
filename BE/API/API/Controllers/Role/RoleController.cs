using API.Controllers.Base;
using DAL.Entity.Role;
using Microsoft.AspNetCore.Mvc;
using SERVICE.IService.Role;

namespace API.Controllers.Role
{
    [ApiController]
    [Route("api/role")]
    public class RoleController : BaseController<RoleEntity,RoleDto>
    {
        private readonly IRoleService _service;
        public RoleController(IRoleService RoleService) : base(RoleService)
        {
            _service = RoleService;
        }
    }
}
