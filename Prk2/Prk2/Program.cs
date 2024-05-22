using Microsoft.AspNetCore.Builder;
using Microsoft.EntityFrameworkCore;
using Prk2.DAL;

namespace Prk2
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            builder.Services.AddDbContext<AppDbContext>(options => options.UseSqlServer
           (builder.Configuration.GetConnectionString("MyConnection")));
            // Add services to the container.
            builder.Services.AddControllersWithViews();
            var app = builder.Build();

            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();
            
                app.MapControllerRoute(
                  name: "areas",
                  pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}"
                );
            

            app.MapControllerRoute(
                name: "default",
                pattern: "{controller=Home}/{action=Index}/{id?}");

            app.Run();
        }
    }
}
