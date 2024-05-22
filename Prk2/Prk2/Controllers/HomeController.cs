using Microsoft.AspNetCore.Mvc;
namespace Prk2.Controllers
{
    public class HomeController : Controller
    {
        public async Task<IActionResult> Index()
        {
            return View();
        }
    }
}
