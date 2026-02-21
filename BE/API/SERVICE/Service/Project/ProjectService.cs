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
        public async Task<ProjectDto> GetById(Guid id)
        {
            return await _repo.GetById(id);
        }
        public async Task<bool> Update(ProjectEntity entity)
        {
            entity.ngay_cap_nhat = DateTime.Now;
            return await _repo.Update(entity);
        }

        public async Task<bool> JoinProject(JoinProjectDto dto)
        {
            return await _repo.JoinProject(dto);
        }
        public async Task<bool> Insert(ProjectEntity e)
        {
            e.id = Guid.NewGuid();
            e.ngay_tao = DateTime.Now;
            e.ngay_cap_nhat = DateTime.Now;

            return await _repo.Insert(e);
        }
        public async Task<int> DeleteProject(Guid id)
        {
            return await _repo.DeleteProject(id);
        }

        public async Task<List<ProjectMemberDto>> GetMembersByProjectId(Guid projectId)
        {
            return await _repo.GetMembersByProjectId(projectId);
        }
        public async Task<bool> RemoveMember(Guid idNguoiDung, Guid idDuAn)
        {
            return await _repo.RemoveMember(idNguoiDung, idDuAn);
        }


    }
}
