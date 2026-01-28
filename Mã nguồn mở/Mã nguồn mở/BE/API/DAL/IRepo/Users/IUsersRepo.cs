using DAL.Base.IRepo;
using DAL.Entity.Users;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.IRepo.Users
{
    public interface IUsersRepo : IBaseRepo<UsersEntity, UsersDto>
    {
    }
}
