using DAL.Base.Repo;
using DAL.Entity.Users;
using DAL.IRepo.Users;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repo.Users
{
    public class UsersRepo : BaseRepo<UsersEntity, UsersDto>, IUsersRepo
    {
    }
}
