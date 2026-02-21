using DAL.Base;
using DAL.Base.IRepo;
using DAL.Base.Repo;
using SERVICE.Base.IService;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.Net;


namespace SERVICE.Base.Service
{
    public class BaseService<Entity, Dto> : IBaseService<Entity, Dto>
    {
        private readonly DAL.Base.IRepo.IBaseRepo<Entity, Dto> _baseRepo;

        public BaseService(DAL.Base.IRepo.IBaseRepo<Entity, Dto> baseRepo)
        {
            _baseRepo = baseRepo;
        }
        protected virtual async Task<List<Dto>> AfterGetAllData(List<Dto> data)
        {
            return data;
        }
        public async Task<List<Entity>> GetAll()
        {
            var result = await _baseRepo.GetAll();
            return result;
        }

        public async Task<int> Insert(Entity entity)
        {
            var result = await _baseRepo.Insert(entity);
            return result;
        }

        public async Task<BaseResult> Delete(Guid pkId)
        {
            var deleted = await _baseRepo.Delete(pkId);
            return new BaseResult()
            {
                is_success = deleted > 0,
                status = deleted > 0
                    ? (int)HttpStatusCode.OK
                    : (int)HttpStatusCode.NotFound,
                Message = deleted > 0 ? "Xóa thành công" : "Không tìm thấy bản ghi cần xóa",
                data = null
            };
        }
        public async Task<Entity?> GetById(Guid id)
        {
            var result = await _baseRepo.GetById(id);
            return result;
        }

        //public async Task<int> Update(Entity entity)
        //{
        //    var result = await _baseRepo.Update(entity);
        //    return result;
        //}



    }
}
