using API.Controllers.Base;
using DAL.Entity.Post.Dto;
using DAL.Entity.Post.Entity;
using DAL.Entity.Project;
using Microsoft.AspNetCore.Mvc;
using SERVICE.IService.Post;

namespace API.Controllers.Post
{
    [ApiController]
    [Route("api/post")]
    public class PostController : BaseController<PostEntity, PostDto>
    {
        private readonly IPostService _postService;
        public PostController(IPostService postService) : base(postService) { 
            _postService = postService;
        }

        [HttpGet("project/{idDuAn}")]
        public async Task<IActionResult> GetByDuAnId(Guid idDuAn)
        {
            var data = await _postService.GetByDuAnId(idDuAn);
            return Ok(data);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Update(Guid id, [FromBody] PostEntity e)
        {
            e.id_bai_dang = id;

            var ok = await _postService.Update(e);

            if (!ok)
                return BadRequest("Cập nhật thất bại");

            return Ok(ok);
        }



        [HttpPost]
        public override async Task<IActionResult> Insert([FromBody] PostEntity entity)
        {
            var ok = await _postService.Insert(entity);

            if (!ok)
                return BadRequest("Thêm thất bại");

            return Ok(ok);
        }
        [HttpPut("approve/{id}")]
        public async Task<IActionResult> Approve(Guid id)
        {
            var result = await _postService.UpdateStatus(id, 1);

            if (!result)
                return BadRequest();

            return Ok();
        }


    }

}
