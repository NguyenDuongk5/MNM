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
        Task<ProjectDto> GetById(Guid id);
        Task<bool> Update(ProjectEntity entity);
        Task<bool> JoinProject(JoinProjectDto dto);
        Task<bool> Insert(ProjectEntity e);
        Task<int> DeleteProject(Guid id);
        Task<List<ProjectMemberDto>> GetMembersByProjectId(Guid projectId);
        Task<ProjectDto> GetProjectByIdAndUser(Guid projectId, Guid userId);
        Task<bool> RemoveMember(Guid idNguoiDung, Guid idDuAn);



    }
}
