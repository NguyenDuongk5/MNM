using DAL.Base.IRepo;
using DAL.Entity.Post.Dto;
using DAL.Entity.Post.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.IRepo.Post
{
    public interface IPostRepo : IBaseRepo<PostEntity, PostDto>
    {

    }
}
