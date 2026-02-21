using DAL.Base.Repo;
using DAL.Entity.Activity;
using DAL.IRepo.Activity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repo.Activity
{
    public class ActivityRepo : BaseRepo<ActivityEntity, ActivityDto>, IActivityRepo
    {

    }
}
