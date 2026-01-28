using DAL.Base.IRepo;
using DAL.Entity.project;
using DAL.Entity.Project;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.IRepo.Project
{
    public interface IProjectRepo : IBaseRepo<ProjectEntity, ProjectDto>
    {

    }
}
