// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace ProjectWebsite
{
    public partial class Users
    {
        public Users()
        {
            Products = new HashSet<Products>();
            Services = new HashSet<Services>();
        }

        public string AspId { get; set; }
        public int UserId { get; set; }
        public string PublicUserName { get; set; }

        public virtual ICollection<Products> Products { get; set; }
        public virtual ICollection<Services> Services { get; set; }
    }
}