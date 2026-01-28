using DAL.Entity.Users;
using SERVICE.Base.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.IService.Users
{
    public interface IUsersService : IBaseService<UsersEntity, UsersDto>
    {
    }
}
