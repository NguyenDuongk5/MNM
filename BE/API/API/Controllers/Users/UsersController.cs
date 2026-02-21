using API.Controllers.Base;
using DAL.Entity.Post.Dto;
using DAL.Entity.Users;
using Microsoft.AspNetCore.Mvc;
using SERVICE.IService.Users;
using SERVICE.Service.Users;


[ApiController]
[Route("api/users")]
public class UsersController : BaseController<UsersEntity, UsersDto>
{
    private readonly IUsersService _service;

    public UsersController(IUsersService usersService) : base(usersService)
    {
        _service = usersService;
    }

    /// <summary>
    /// Lấy danh sách dự án của một người dùng cụ thể
    /// </summary>
    [HttpGet("{id}/projects")]
    public async Task<IActionResult> GetUserProjects(Guid id)
    {
        try
        {
            var result = await _service.GetUserProjects(id);
            if (result == null || !result.Any())
            {
                return NotFound(new { message = "Không tìm thấy dự án nào cho người dùng này." });
            }
            return Ok(result);
        }
        catch (Exception ex)
        {
            return BadRequest(new { message = ex.Message });
        }
    }

    [HttpPut("{id}")]
    public  async Task<IActionResult> Update(Guid id, [FromBody] UpdateUserRequest request)
    {
        var dto = new UsersDto
        {
            id_nguoi_dung = id,  
            hoten = request.hoten,
            email = request.email
        };

        var result = await _service.UpdateUser(dto);

        if (!result)
            return BadRequest("Cập nhật thất bại");

        return Ok("Cập nhật thành công");
    }

    [HttpGet("{id}")]
    public override async Task<IActionResult> GetById(Guid id)
    {
        try
        {
            var result = await _service.GetUserProjects(id);
            if (result == null || !result.Any())
            {
                return NotFound(new { message = "Không tìm thấy dự án nào cho người dùng này." });
            }
            return Ok(result);
        }
        catch (Exception ex)
        {
            return BadRequest(new { message = ex.Message });
        }
    }
    /// <summary>
    /// Lấy danh sách bài đăng của một người dùng cụ thể
    /// </summary>
    [HttpGet("{id}/post")]
    public async Task<IActionResult> GetPostsByUserId(Guid id)
    {
        var result = await _service.GetPostsByUserId(id);
        return Ok(result);
    }
    [HttpPut("approve")]
    public async Task<IActionResult> ApproveMember(Guid idNguoiDung, Guid idDuAn)
    {
        var result = await _service.ApproveMember(idNguoiDung, idDuAn);

        if (!result)
            return NotFound(new { message = "Không tìm thấy thành viên" });

        return Ok(new { message = "Duyệt thành công" });
    }

}
