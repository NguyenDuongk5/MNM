using DAL.Base.IRepo;
using DAL.Entity.Comment;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.IRepo.Comment
{
    public interface ICommentRepo : IBaseRepo<CommentEntity, CommentDto>
    {
        Task<IEnumerable<CommentDto>> GetCmtByPostId(Guid PostId);
        Task<bool> Insert(CommentEntity e);
        Task<bool> Update(CommentEntity e);


    }
}
