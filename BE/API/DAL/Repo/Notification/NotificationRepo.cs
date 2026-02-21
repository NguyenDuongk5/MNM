using DAL.Base.Repo;
using DAL.Entity.Notification;
using DAL.IRepo.Notification;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repo.Notification
{
    public class NotificationRepo : BaseRepo<NotificationEntity, NotificationDto>, INotificationRepo
    {
    }
}
