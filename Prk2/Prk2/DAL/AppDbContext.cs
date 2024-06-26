﻿using Microsoft.EntityFrameworkCore;
using Prk2.Models;

namespace Prk2.DAL
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext>options):base(options)
        {
        }
        public DbSet<Category> Categories { get; set; }
    }
}
