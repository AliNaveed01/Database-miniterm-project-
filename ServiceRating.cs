﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace ProjectWebsite
{
    public partial class ServiceRating
    {
        public int ServiceId { get; set; }
        public int Rating { get; set; }
        public int? UserId { get; set; }

        public virtual Services Service { get; set; }
        public virtual Users User { get; set; }
    }
}