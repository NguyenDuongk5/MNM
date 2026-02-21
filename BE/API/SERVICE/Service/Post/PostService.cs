using DAL.Entity.Post.Dto;
using DAL.Entity.Post.Entity;
using DAL.Entity.Project;
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
            data = data.OrderByDescending(x => x.ngay_cap_nhat).ToList();
            return data;
        }


        public async Task<IEnumerable<PostDto>> GetByDuAnId(Guid idDuAn)
        {
            return await _repo.GetByDuAnId(idDuAn);
        }
        public async Task<bool> Update(PostEntity e)
        {
            return await _repo.Update(e);
        }
        public async Task<bool> Insert(PostEntity e)
        {
            e.id_bai_dang = Guid.NewGuid();
            e.ngay_tao = DateTime.Now;
            e.ngay_cap_nhat = DateTime.Now;

            return await _repo.Insert(e);
        }
        public async Task<bool> UpdateStatus(Guid id, int status)
        {
            return await (_repo.UpdateStatus(id, status));
        }


    }
}
