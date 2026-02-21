using DAL.Base.IRepo;
using DAL.Entity.Member;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.IRepo.Member
{
    public interface IMemberRepo : IBaseRepo<MemberEntity, MemberDto>
    {
    }
}
