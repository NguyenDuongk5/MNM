using API.Controllers.Base;
using DAL.Entity.Post.Dto;
using DAL.Entity.Post.Entity;
using DAL.Entity.project;
using DAL.Entity.Project;
using Microsoft.AspNetCore.Mvc;
using SERVICE.IService.Post;
using SERVICE.IService.Project;
using SERVICE.Service.Post;
using SERVICE.Service.Project;

namespace API.Controllers.Project
{
    [ApiController]
    [Route("api/project")]
    public class ProjectController : BaseController<ProjectEntity, ProjectDto>
    {
        private readonly IProjectService _projectService;
        public ProjectController(IProjectService projectService) : base(projectService)
        {
            _projectService = projectService;
        }
        [HttpGet("{id}")]
        public override async Task<IActionResult> GetById(Guid id)
        {
            var result = await _projectService.GetById(id);
            return Ok(result);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Update(Guid id, [FromBody] ProjectEntity entity)
        {
            if (id != entity.id) return BadRequest("Id không khớp");

            var ok = await _projectService.Update(entity);
            if (!ok) return BadRequest("Update thất bại");

            return Ok(ok);
        }

        [HttpPost("join")]
        public  async Task<IActionResult> JoinProject([FromBody] JoinProjectDto dto)
        {
            if (dto.id_nguoi_dung == Guid.Empty || dto.id_du_an == Guid.Empty)
                return BadRequest("Thiếu dữ liệu");

            var result = await _projectService.JoinProject(dto);

            if (!result)
                return BadRequest("Bạn đã tham gia hoặc lỗi");

            return Ok(new { message = "Join project thành công" });
        }
        [HttpPost]
        public override async Task<IActionResult> Insert([FromBody] ProjectEntity entity)
        {
            if (entity == null)
                return BadRequest("Dữ liệu không hợp lệ");

            var ok = await _projectService.Insert(entity);

            if (!ok)
                return BadRequest("Thêm dự án thất bại");

            // TỰ ĐỘNG JOIN nguoi_tham_gia
            var joinDto = new JoinProjectDto
            {
                id_du_an = entity.id,
                id_nguoi_dung = entity.id_nguoi_tao
            };

            await _projectService.JoinProject(joinDto);

            return Ok(new
            {
                message = "Thêm dự án thành công",
                id = entity.id
            });
        }
        [HttpDelete("{id}")]
        public override async Task<IActionResult> Delete(Guid id)
        {
            var result = await _projectService.DeleteProject(id);
            return Ok(result);
        }
        [HttpGet("member/{ProjectId}")]
        public async Task<IActionResult> GetMembersByProjectId(Guid ProjectId)
        {
            var data = await _projectService.GetMembersByProjectId(ProjectId);
            return Ok(data);
        }

        [HttpDelete("member")]
        public async Task<IActionResult> RemoveMember(Guid idNguoiDung, Guid idDuAn)
        {
            var result = await _projectService.RemoveMember(idNguoiDung, idDuAn);

            if (result)
                return Ok(new { message = "Đã xóa thành viên khỏi dự án" });

            return BadRequest(new { message = "Xóa thất bại" });
        }

    }
}
