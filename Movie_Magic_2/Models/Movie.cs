using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Movie_Magic_2.Models
{
    public class Movie
    {
        [Key]
        [Required]
        public int MovieID { get; set; }
        [Required]
        public string? Movie_name { get; set; }
        [Required]
        public string? Director { get; set; }
        public int? Release_Year { get; set; }
        public float? Rating { get; set; }
        public string? Image { get; set; }

    }
}