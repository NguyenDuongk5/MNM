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
        Task<ProjectDto> GetById(Guid id);
        Task<bool> JoinProject(JoinProjectDto dto);
        Task<bool> Update(ProjectEntity entity);
        Task<bool> Insert(ProjectEntity e);

        Task<int> DeleteProject(Guid id);
        Task<List<ProjectMemberDto>> GetMembersByProjectId(Guid projectId);
        Task<bool> RemoveMember(Guid idNguoiDung, Guid idDuAn);
    }
}
