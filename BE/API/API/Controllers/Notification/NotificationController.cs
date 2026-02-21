using API.Controllers.Base;
using DAL.Entity.Notification;
using Microsoft.AspNetCore.Mvc;
using SERVICE.Base.IService;

namespace API.Controllers.Notification
{
    [ApiController]
    [Route("api/notification")]
    public class NotificationController :BaseController<NotificationEntity, NotificationDto>
    {
        private readonly IBaseService<NotificationEntity, NotificationDto> _notificationService;
        public NotificationController(IBaseService<NotificationEntity, NotificationDto> notificationService) : base(notificationService)
        {
            _notificationService = notificationService;
        }
    }
}
