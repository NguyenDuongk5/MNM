using DAL.Base.Repo;
using DAL.Entity.Post.Dto;
using DAL.Entity.Post.Entity;
using DAL.IRepo.Post;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repo.Post
{
    public class PostRepo : BaseRepo<PostEntity, PostDto>, IPostRepo
    {

    }

}
