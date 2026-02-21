using DAL.Base.IRepo;
using DAL.Entity.Notification;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.IRepo.Notification
{
    public interface INotificationRepo : IBaseRepo <NotificationEntity, NotificationDto>
    {
    }
}
