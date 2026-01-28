using DAL.Entity.project;
using DAL.Entity.Project;
using SERVICE.Base.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.IService.Project
{
    public interface IProjectService : IBaseService<ProjectEntity, ProjectDto>
    {
    }
}
