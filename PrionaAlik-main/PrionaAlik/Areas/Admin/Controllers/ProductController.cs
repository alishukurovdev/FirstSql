using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PrionaAlik.DataAccesLayer;
using PrionaAlik.Extensions;
using PrionaAlik.ViewModels.Products;

namespace PrionaAlik.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class ProductController(PrionaContext _context) :Controller
    {
        public async Task<IActionResult> Index()
        {
            
            return View(await _context.Products
                .Select(p => new GetProductAdminVM
                {
                    CostPrice = p.CostPrice,
                    Discount = p.Discount,
                      Id = p.Id,
                      ImageUrl = p.ImageUrl,
                      Name = p.Name,
                      Rating = p.Rating,
                      SellPrice = p.SellPrice,
                      StockCount = p.StockCount,

                })
                .ToListAsync());  
        }
        public async Task<IActionResult> Create()
        {
            return  View();
        }
        [HttpPost]
        public async Task<IActionResult> Create(CreateProductVM data)
        {

            foreach (IFormFile img in data.ImageFiles)
            {
                if (!img.IsValidType("image"))
                    ModelState.AddModelError("ImageFil", "Fayil sekil formasinda olmalidi");
            }
           
           foreach(IFormFile img in data.ImageFiles) {
                if (!img.IsValidLength(200))
                    if (!ModelState.IsValid) return View(data);
                return View(data);
            }
            return View(data);

        }

        
    }
}
