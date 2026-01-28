using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Base.IRepo
{
    public interface IBaseRepo<Entity, Dto>
    {
        Task<List<Dto>> GetAll();

        Task<int> Insert(Entity entity);

        Task<int> Delete(Guid pkId);
    }
}
