using API.Controllers.Base;
using DAL.Entity.Activity;
using Microsoft.AspNetCore.Mvc;
using SERVICE.IService.Activity;
using SERVICE.IService.Users;

namespace API.Controllers.Activity
{
    [ApiController]
    [Route("[controller]")]
    public class ActivityController : BaseController<ActivityEntity, ActivityDto>
    {
        private readonly IActivityService _service;
        public ActivityController(IActivityService service) : base(service)
        {
            _service = service;
        }
    }
}
