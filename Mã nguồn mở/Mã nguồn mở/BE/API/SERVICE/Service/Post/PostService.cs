using DAL.Entity.Post.Dto;
using DAL.Entity.Post.Entity;
using DAL.IRepo.Post;
using SERVICE.Base.Service;
using SERVICE.IService.Post;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.Service.Post
{
    public class PostService : BaseService<PostEntity, PostDto>, IPostService
    {
        private readonly IPostRepo _repo;
        public PostService(IPostRepo repo)
            : base(repo)
        {
            _repo = repo;
        }

        protected override async Task<List<PostDto>> AfterGetAllData(List<PostDto> data)
        {
            data = data.OrderByDescending(x => x.modified_date).ToList();
            return data;
        }
    }
}
