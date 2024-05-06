using Microsoft.AspNetCore.Mvc;

namespace WebApplntroConsole.Controllers
{
    public class HomeController: Controller
    {
        public  IActionResult Index()
        {
            return View();
        }
    }
}
