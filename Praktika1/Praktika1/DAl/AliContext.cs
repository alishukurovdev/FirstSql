using Microsoft.EntityFrameworkCore;
using Praktika1.Models;

namespace Praktika1.DAl
{
    public class AliContext : DbContext
    {
        //public AliContext(DbContextOptions<AliContext> options)
        //       : base(options)
        //{
        //}

        public DbSet<Category> Users { get; set; }
    }
}
