﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

public partial class virrtuohr_dbEntities : DbContext
{
    public virrtuohr_dbEntities()
        : base("name=virrtuohr_dbEntities")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public DbSet<empbasic> empbasics { get; set; }
    public DbSet<empdetail> empdetails { get; set; }
    public DbSet<user> users { get; set; }
}
