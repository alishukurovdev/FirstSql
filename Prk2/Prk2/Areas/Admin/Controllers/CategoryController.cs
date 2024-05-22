using Microsoft.AspNetCore.Mvc;

namespace Prk2.Areas.Admin.Controllers
{
    public class CategoryController:Controller
    {
        public async Task<ActionResult> Index()
        {
            return View();
        }

    }
}
