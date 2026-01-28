using API.Controllers.Base;
using DAL.Entity.Post.Dto;
using DAL.Entity.Post.Entity;
using DAL.Entity.project;
using DAL.Entity.Project;
using Microsoft.AspNetCore.Mvc;
using SERVICE.IService.Post;
using SERVICE.IService.Project;
using SERVICE.Service.Project;

namespace API.Controllers.Project
{
    [ApiController]
    [Route("[controller]")]
    public class ProjectController : BaseController<ProjectEntity, ProjectDto>
    {
        private readonly IProjectService _projectService;
        public ProjectController(IProjectService projectService) : base(projectService)
        {
            _projectService = projectService;
        }
    }
}
