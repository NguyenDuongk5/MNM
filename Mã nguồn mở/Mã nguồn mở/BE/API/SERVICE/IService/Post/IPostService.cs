using DAL.Entity.Post.Dto;
using DAL.Entity.Post.Entity;
using SERVICE.Base.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.IService.Post
{
    public interface IPostService : IBaseService<PostEntity, PostDto>
    {

    }
}
