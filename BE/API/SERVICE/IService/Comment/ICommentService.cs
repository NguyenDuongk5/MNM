using DAL.Entity.Comment;
using SERVICE.Base.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.IService.Comment
{
    public interface ICommentService : IBaseService< CommentEntity, CommentDto>
    {
        Task<IEnumerable<CommentDto>> GetCmtByPostId(Guid PostId);

        Task<bool> Update(CommentEntity e);
        Task<bool> Insert(CommentEntity e);


    }
}
