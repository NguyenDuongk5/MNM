using Microsoft.AspNetCore.Mvc;
using SERVICE.Base.IService;
using System.ComponentModel.DataAnnotations.Schema;

namespace API.Controllers.Base
{
    [ApiController]
    [Route("[controller]")]
    public class BaseController<Entity, Dto> : ControllerBase
    {
        private readonly IBaseService<Entity, Dto> _baseService;

        public BaseController(IBaseService<Entity, Dto> baseService)
        {
            _baseService = baseService;
        }

        [HttpGet("all")]
        public async Task<IActionResult> GetAll()
        {
            var result = await _baseService.GetAll();
            return Ok(result);
        }
        
        [HttpPost]
        public async Task<IActionResult> Insert(Entity entity)
        {
            var result = await _baseService.Insert(entity);
            return Ok(result);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(Guid id)
        {
            var result = await _baseService.Delete(id);
            return Ok(result);
        }


    }
}
