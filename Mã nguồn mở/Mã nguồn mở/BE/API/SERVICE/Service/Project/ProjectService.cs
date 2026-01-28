using DAL.Entity.Post.Dto;
using DAL.Entity.project;
using DAL.Entity.Project;
using DAL.IRepo.Post;
using DAL.IRepo.Project;
using DAL.Repo.Project;
using SERVICE.Base.Service;
using SERVICE.IService.Project;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.Service.Project
{
    public class ProjectService : BaseService<ProjectEntity, ProjectDto>, IProjectService
    {
        private readonly IProjectRepo _repo;
        public ProjectService(IProjectRepo repo)
            : base(repo)
        {
            _repo = repo;
        }

    }
}
