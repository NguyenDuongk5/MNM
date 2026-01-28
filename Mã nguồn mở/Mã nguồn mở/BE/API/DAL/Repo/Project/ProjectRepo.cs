using DAL.Base.Repo;
using DAL.Entity.project;
using DAL.Entity.Project;
using DAL.IRepo.Project;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repo.Project
{
    public class ProjectRepo : BaseRepo<ProjectEntity, ProjectDto>, IProjectRepo
    {

    }
}
