using API.Controllers.Base;
using DAL.Entity.Post.Dto;
using DAL.Entity.Post.Entity;
using Microsoft.AspNetCore.Mvc;
using SERVICE.IService.Post;

namespace API.Controllers.Post
{
    [ApiController]
    [Route("[controller]")]
    public class PostController : BaseController<PostEntity, PostDto>
    {
        private readonly IPostService _postService;
        public PostController(IPostService postService) : base(postService) { 
            _postService = postService;
        }

    }
}
