//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Outfit
    {
        public Outfit()
        {
            this.Accessories = new HashSet<Accessory>();
            this.Bottoms = new HashSet<Bottom>();
            this.Shoes = new HashSet<Sho>();
            this.Tops = new HashSet<Top>();
        }
    
        public int OutfitsID { get; set; }
        public string OutfitName { get; set; }
        public Nullable<int> TopsID { get; set; }
        public Nullable<int> BottomsID { get; set; }
        public Nullable<int> ShoesID { get; set; }
        public Nullable<int> AccessoriesID { get; set; }
    
        public virtual ICollection<Accessory> Accessories { get; set; }
        public virtual Accessory Accessory { get; set; }
        public virtual ICollection<Bottom> Bottoms { get; set; }
        public virtual Bottom Bottom { get; set; }
        public virtual Sho Sho { get; set; }
        public virtual Top Top { get; set; }
        public virtual ICollection<Sho> Shoes { get; set; }
        public virtual ICollection<Top> Tops { get; set; }
    }
}
