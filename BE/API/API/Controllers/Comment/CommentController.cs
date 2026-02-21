using API.Controllers.Base;
using DAL.Entity.Comment;
using DAL.Entity.Post.Entity;
using DAL.Entity.project;
using DAL.Entity.Project;
using Microsoft.AspNetCore.Mvc;
using SERVICE.Base.IService;
using SERVICE.IService.Comment;
using SERVICE.IService.Project;
using SERVICE.Service.Comment;
using SERVICE.Service.Project;
using static Dapper.SqlMapper;

namespace API.Controllers.Comment
{
    [ApiController]
    [Route("api/comment")]
    public class CommentController : BaseController<CommentEntity, CommentDto>
    {
        private readonly ICommentService _commentService;
        public CommentController(ICommentService commentService) : base(commentService)
        {
            _commentService = commentService;
        }

        /// <summary>
        /// Get bình luận theo bài đăng
        /// </summary>
        /// <param name="PostId"></param>
        /// <returns></returns>
        [HttpGet("{PostId}/post")]
        public async Task<IActionResult> GetCmtByPostId(Guid PostId)
        {
            var result = await _commentService.GetCmtByPostId(PostId);
            return Ok(result);
        }

        [HttpPost]
        public override async Task<IActionResult> Insert([FromBody] CommentEntity entity)
        {
            var ok = await _commentService.Insert(entity);

            if (!ok)
                return BadRequest("Thêm comment thất bại");

            return Ok(ok);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Update(Guid id, [FromBody] CommentEntity e)
        {
            e.id_bai_dang = id;

            var ok = await _commentService.Update(e);

            if (!ok)
                return BadRequest("Cập nhật thất bại");

            return Ok(ok);
        }

        



    }
}
