using DAL.Entity.Member;
using SERVICE.Base.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.IService.Member
{
    public interface IMemberService : IBaseService<MemberEntity, MemberDto>
    {
    }
}
