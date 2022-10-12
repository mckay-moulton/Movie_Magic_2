using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Movie_Magic_2.Models
{
    public class MoviesDbContext : DbContext
    {
        protected readonly IConfiguration Configuration;
#pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
        public MoviesDbContext(IConfiguration configuration)
#pragma warning restore CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
        {
            Configuration = configuration;
        }
        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            // connect to sql server with connection string from app settings
            //options.UseMySql(Configuration.GetConnectionString("MoviesDbConnection"));
            options.UseMySql(Configuration.GetConnectionString("MoviesDbConnection"), new MySqlServerVersion(new Version(8, 0, 28)));
        }
        public virtual DbSet<Movie> Movie_Db { get; set; }
    }


//    {
//#pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
//        public MoviesDbContext(DbContextOptions<MoviesDbContext> options) : base(options)
//#pragma warning restore CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
//        {

//        }
//        public virtual DbSet<Movie> Movie_Db { get; set; }
//    }
}