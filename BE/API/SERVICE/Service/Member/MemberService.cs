using DAL.Entity.Member;
using DAL.IRepo.Member;
using DAL.IRepo.Role;
using SERVICE.Base.Service;
using SERVICE.IService.Member;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.Service.Member
{
    public class MemberService : BaseService<MemberEntity, MemberDto>, IMemberService
    {
        private readonly IMemberRepo _repo;
        public MemberService(IMemberRepo repo) : base(repo)
        {
            _repo = repo;
        }
    }
}
