using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Movie_Magic_2.Models;
using System.Configuration;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();


// ____________________

// I added this
builder.Services.AddDbContext<MoviesDbContext>(options =>
options.UseMySql(builder.Configuration.GetConnectionString("MoviesDbConnection"), new MySqlServerVersion(new Version(8, 0, 28))));


//builder.Services.AddDbContext<MoviesDbContext>(
//    dbContextOptions => dbContextOptions
//        .UseMySql("MoviesDbConnection", ServerVersion.AutoDetect("MoviesDbConnection"))
//        );


var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
