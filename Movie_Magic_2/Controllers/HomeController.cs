using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Movie_Magic_2.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace Movie_Magic.Controllers
{
    public class HomeController : Controller
    {
        private MoviesDbContext _context { get; set; }
        //Constructor
        public HomeController(MoviesDbContext temp)
        {
            _context = temp;
        }

        public IActionResult Index()
        {
            var blah = _context.Movie_Db.ToList();
            return View(blah);
        }

    }
}