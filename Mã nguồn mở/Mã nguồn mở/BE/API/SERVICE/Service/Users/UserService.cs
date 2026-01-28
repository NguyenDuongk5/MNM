using DAL.Entity.Post.Dto;
using DAL.Entity.Users;
using DAL.IRepo.Users;
using SERVICE.Base.Service;
using SERVICE.IService.Users;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.Service.Users
{
    public class UserService : BaseService<UsersEntity, UsersDto>, IUsersService
    {
        private readonly IUsersRepo _repo;
        public UserService(IUsersRepo repo) : base(repo)
        {
            _repo = repo;
        }
    }
}
