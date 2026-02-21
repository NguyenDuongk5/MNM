using DAL.Entity.Notification;
using DAL.IRepo.Notification;
using SERVICE.Base.IService;
using SERVICE.Base.Service;
using SERVICE.IService.Notification;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.Service.Notification
{
    public class NotificationService : BaseService<NotificationEntity, NotificationDto>, INotificationService
    {
        private readonly INotificationRepo _repo;
        public NotificationService(INotificationRepo repo) : base(repo)
        {
            _repo = repo;
        }
    }
}
