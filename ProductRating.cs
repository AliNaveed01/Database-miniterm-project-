﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace ProjectWebsite
{
    public partial class ProductRating
    {
        public int ProductId { get; set; }
        public int Rating { get; set; }
        public int? UserId { get; set; }

        public virtual Products Product { get; set; }
        public virtual Users User { get; set; }
    }
}