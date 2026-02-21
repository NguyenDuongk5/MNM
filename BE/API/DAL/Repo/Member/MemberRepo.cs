using DAL.Base.Repo;
using DAL.Entity.Member;
using DAL.IRepo.Member;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repo.Member
{
    public class MemberRepo : BaseRepo<MemberEntity, MemberDto>, IMemberRepo
    {

    }
}
