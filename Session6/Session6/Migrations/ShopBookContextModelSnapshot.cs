﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Session6.Models;

#nullable disable

namespace Session6.Migrations
{
    [DbContext(typeof(ShopBookContext))]
    partial class ShopBookContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "9.0.0")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("Session6.Models.Account", b =>
                {
                    b.Property<string>("AccountId")
                        .HasMaxLength(36)
                        .IsUnicode(false)
                        .HasColumnType("varchar(36)");

                    b.Property<bool?>("Active")
                        .HasColumnType("bit");

                    b.Property<string>("Address")
                        .HasMaxLength(512)
                        .HasColumnType("nvarchar(512)");

                    b.Property<string>("Email")
                        .HasMaxLength(64)
                        .IsUnicode(false)
                        .HasColumnType("varchar(64)");

                    b.Property<string>("FullName")
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<bool?>("IsAdmin")
                        .HasColumnType("bit");

                    b.Property<string>("Password")
                        .HasMaxLength(256)
                        .IsUnicode(false)
                        .HasColumnType("varchar(256)");

                    b.Property<string>("Phone")
                        .HasMaxLength(64)
                        .IsUnicode(false)
                        .HasColumnType("varchar(64)");

                    b.Property<string>("Picture")
                        .HasMaxLength(512)
                        .IsUnicode(false)
                        .HasColumnType("varchar(512)");

                    b.Property<string>("Username")
                        .IsRequired()
                        .HasMaxLength(64)
                        .IsUnicode(false)
                        .HasColumnType("varchar(64)");

                    b.HasKey("AccountId")
                        .HasName("PK__Account__349DA5A6B35C2C78");

                    b.ToTable("Account", (string)null);
                });

            modelBuilder.Entity("Session6.Models.Book", b =>
                {
                    b.Property<string>("BookId")
                        .HasMaxLength(10)
                        .IsUnicode(false)
                        .HasColumnType("varchar(10)");

                    b.Property<string>("Author")
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<int?>("CategoryId")
                        .HasColumnType("int");

                    b.Property<string>("Description")
                        .HasColumnType("ntext");

                    b.Property<string>("Picture")
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<double?>("Price")
                        .HasColumnType("float");

                    b.Property<int?>("PublisherId")
                        .HasColumnType("int");

                    b.Property<int?>("Release")
                        .HasColumnType("int");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.HasKey("BookId")
                        .HasName("PK__Book__3DE0C207EBCEC9CA");

                    b.HasIndex("CategoryId");

                    b.HasIndex("PublisherId");

                    b.ToTable("Book", (string)null);
                });

            modelBuilder.Entity("Session6.Models.Category", b =>
                {
                    b.Property<int>("CategoryId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("CategoryId"));

                    b.Property<string>("CategoryName")
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.HasKey("CategoryId")
                        .HasName("PK__Category__19093A0BCAA455F1");

                    b.ToTable("Category", (string)null);
                });

            modelBuilder.Entity("Session6.Models.OrderBook", b =>
                {
                    b.Property<string>("OrderId")
                        .HasMaxLength(16)
                        .IsUnicode(false)
                        .HasColumnType("varchar(16)");

                    b.Property<string>("AccountId")
                        .HasMaxLength(36)
                        .IsUnicode(false)
                        .HasColumnType("varchar(36)");

                    b.Property<string>("Note")
                        .HasMaxLength(512)
                        .HasColumnType("nvarchar(512)");

                    b.Property<DateTime?>("OrderDate")
                        .HasColumnType("datetime");

                    b.Property<DateTime?>("OrderReceive")
                        .HasColumnType("datetime");

                    b.Property<string>("ReceiveAddress")
                        .HasMaxLength(512)
                        .HasColumnType("nvarchar(512)");

                    b.Property<string>("ReceivePhone")
                        .HasMaxLength(64)
                        .IsUnicode(false)
                        .HasColumnType("varchar(64)");

                    b.Property<string>("Status")
                        .HasMaxLength(16)
                        .IsUnicode(false)
                        .HasColumnType("varchar(16)");

                    b.HasKey("OrderId")
                        .HasName("PK__OrderBoo__C3905BCFDAA45DA2");

                    b.HasIndex("AccountId");

                    b.ToTable("OrderBook", (string)null);
                });

            modelBuilder.Entity("Session6.Models.OrderDetail", b =>
                {
                    b.Property<int>("OrderDetailId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("OrderDetailId"));

                    b.Property<string>("BookId")
                        .HasMaxLength(10)
                        .IsUnicode(false)
                        .HasColumnType("varchar(10)");

                    b.Property<string>("OrderId")
                        .HasMaxLength(16)
                        .IsUnicode(false)
                        .HasColumnType("varchar(16)");

                    b.Property<int?>("Price")
                        .HasColumnType("int");

                    b.Property<int?>("Quantity")
                        .HasColumnType("int");

                    b.Property<int?>("TotalMoney")
                        .ValueGeneratedOnAddOrUpdate()
                        .HasColumnType("int")
                        .HasComputedColumnSql("([Quantity]*[Price])", false);

                    b.HasKey("OrderDetailId")
                        .HasName("PK__OrderDet__D3B9D36C1704203B");

                    b.HasIndex("BookId");

                    b.HasIndex("OrderId");

                    b.ToTable("OrderDetail", (string)null);
                });

            modelBuilder.Entity("Session6.Models.Publisher", b =>
                {
                    b.Property<int>("PublisherId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("PublisherId"));

                    b.Property<string>("Address")
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.Property<string>("Phone")
                        .HasMaxLength(30)
                        .IsUnicode(false)
                        .HasColumnType("varchar(30)");

                    b.Property<string>("PublisherName")
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.HasKey("PublisherId")
                        .HasName("PK__Publishe__4C657FABF445316F");

                    b.ToTable("Publisher", (string)null);
                });

            modelBuilder.Entity("Session6.Models.Book", b =>
                {
                    b.HasOne("Session6.Models.Category", "Category")
                        .WithMany("Books")
                        .HasForeignKey("CategoryId")
                        .HasConstraintName("FK__Book__CategoryId__4E88ABD4");

                    b.HasOne("Session6.Models.Publisher", "Publisher")
                        .WithMany("Books")
                        .HasForeignKey("PublisherId")
                        .HasConstraintName("FK__Book__PublisherI__4D94879B");

                    b.Navigation("Category");

                    b.Navigation("Publisher");
                });

            modelBuilder.Entity("Session6.Models.OrderBook", b =>
                {
                    b.HasOne("Session6.Models.Account", "Account")
                        .WithMany("OrderBooks")
                        .HasForeignKey("AccountId")
                        .HasConstraintName("FK__OrderBook__Accou__534D60F1");

                    b.Navigation("Account");
                });

            modelBuilder.Entity("Session6.Models.OrderDetail", b =>
                {
                    b.HasOne("Session6.Models.Book", "Book")
                        .WithMany("OrderDetails")
                        .HasForeignKey("BookId")
                        .HasConstraintName("FK__OrderDeta__BookI__571DF1D5");

                    b.HasOne("Session6.Models.OrderBook", "Order")
                        .WithMany("OrderDetails")
                        .HasForeignKey("OrderId")
                        .HasConstraintName("FK__OrderDeta__Order__5629CD9C");

                    b.Navigation("Book");

                    b.Navigation("Order");
                });

            modelBuilder.Entity("Session6.Models.Account", b =>
                {
                    b.Navigation("OrderBooks");
                });

            modelBuilder.Entity("Session6.Models.Book", b =>
                {
                    b.Navigation("OrderDetails");
                });

            modelBuilder.Entity("Session6.Models.Category", b =>
                {
                    b.Navigation("Books");
                });

            modelBuilder.Entity("Session6.Models.OrderBook", b =>
                {
                    b.Navigation("OrderDetails");
                });

            modelBuilder.Entity("Session6.Models.Publisher", b =>
                {
                    b.Navigation("Books");
                });
#pragma warning restore 612, 618
        }
    }
}
