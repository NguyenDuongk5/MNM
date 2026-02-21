using DAL.Entity.Notification;
using SERVICE.Base.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICE.IService.Notification
{
    public interface INotificationService :IBaseService<NotificationEntity, NotificationDto>
    {
    }
}
