using API.Controllers.Base;
using DAL.Entity.Users;
using Microsoft.AspNetCore.Mvc;
using SERVICE.IService.Users;
using SERVICE.Service.Users;

namespace API.Controllers.Users
{
    [ApiController]
    [Route("[controller]")]
    public class UsersController : BaseController<UsersEntity, UsersDto>
    {
        private readonly IUsersService _service;
        public UsersController(IUsersService usersService) : base(usersService) 
        {
            _service = usersService;
        }
    }
}
