﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WardrobeCloset.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class WardrobeClosetProjectEntities : DbContext
    {
        public WardrobeClosetProjectEntities()
            : base("name=WardrobeClosetProjectEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Accessory> Accessories { get; set; }
        public DbSet<Bottom> Bottoms { get; set; }
        public DbSet<Outfit> Outfits { get; set; }
        public DbSet<Sho> Shoes { get; set; }
        public DbSet<Top> Tops { get; set; }
    }
}
