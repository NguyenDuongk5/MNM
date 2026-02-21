using DAL.Entity.Comment;
using DAL.IRepo.Comment;
using SERVICE.Base.Service;
using SERVICE.IService.Comment;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.Service.Comment
{
    public class CommentService : BaseService<CommentEntity, CommentDto>, ICommentService
    {
        private readonly ICommentRepo _repo;
        public CommentService(ICommentRepo repo) : base(repo)
        {
            _repo = repo;
        }
        public async Task<IEnumerable<CommentDto>> GetCmtByPostId(Guid PostId)
        {
            return await _repo.GetCmtByPostId(PostId);
        }

        public async Task<bool> Update(CommentEntity e)
        {
            return await _repo.Update(e);
        }
        public async Task<bool> Insert(CommentEntity e)
        {
            return await _repo.Insert(e);
        }

    }
}
