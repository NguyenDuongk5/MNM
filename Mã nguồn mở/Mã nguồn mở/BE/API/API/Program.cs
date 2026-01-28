using DAL.Base.IRepo;
using DAL.Base.Repo;
using DAL.IRepo.Post;
using DAL.IRepo.Project;
using DAL.IRepo.Users;
using DAL.Repo.Post;
using DAL.Repo.Project;
using DAL.Repo.Users;
using SERVICE.Base.IService;
using SERVICE.Base.Service;
using SERVICE.IService.Post;
using SERVICE.IService.Project;
using SERVICE.IService.Users;
using SERVICE.Service.Post;
using SERVICE.Service.Project;
using SERVICE.Service.Users;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
builder.Services.AddRouting(opt =>
{
    opt.LowercaseUrls = true;
});

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddScoped(typeof(IBaseRepo<,>), typeof(BaseRepo<,>));
builder.Services.AddScoped<IPostRepo, PostRepo>();
builder.Services.AddScoped<IUsersRepo, UsersRepo>();
builder.Services.AddScoped<IProjectRepo, ProjectRepo>();




builder.Services.AddScoped(typeof(IBaseService<,>), typeof(BaseService<,>));
builder.Services.AddScoped<IPostService, PostService>();
builder.Services.AddScoped<IUsersService, UserService>();
builder.Services.AddScoped<IProjectService, ProjectService>();



var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
