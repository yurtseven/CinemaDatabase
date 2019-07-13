USE veritabani ;
GO

	CREATE TABLE [dbo].[tbl_subeler](
    [sube_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [sube_adi] [text] NOT NULL,
    [sube_iletisim_id] [int] NOT NULL,
    [sube_bilet_ucreti] [text] NOT NULL)

	CREATE TABLE [dbo].[tbl_seans_ve_koltuklar](
    [seanskoltuk_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [sk_koltuk_id] [int] NOT NULL,
    [sk_seans_id] [int] NOT NULL)

	CREATE TABLE [dbo].[tbl_seanslar](
    [seans_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [seans_saat] [datetime] NULL,
    [seans_film_id] [int] NOT NULL,
    [seans_salon_id] [int] NOT NULL)
	
	CREATE TABLE [dbo].[tbl_salonlar](
    [salon_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [salon_adi] [text] NOT NULL,
    [salon_sube_id] [int] NOT NULL)

	CREATE TABLE [dbo].[tbl_personel_unvan](
    [unvan_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [unvan_adi] [text] NOT NULL)

	CREATE TABLE [dbo].[tbl_personel](
    [personel_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [personel_adi] [text] NULL,
    [personel_soyadi] [text] NULL,
    [personel_iletisim_id] [int] NOT NULL,
    [personel_unvan_id] [int] NOT NULL,
    [personel_sube_id] [int] NOT NULL)

	CREATE TABLE [dbo].[tbl_koltuk](
    [koltuk_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [koltuk_adi] [text] NOT NULL,
    [koltuk_salon_id] [int] NOT NULL)

	CREATE TABLE [dbo].[tbl_kategori](
    [kategori_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [kategori_adi] [text] NOT NULL)

	CREATE TABLE [dbo].[tbl_iller](
    [il_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [il_adi] [text] NULL)

	CREATE TABLE [dbo].[tbl_iletisim](
    [iletisim_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [iletisim_il_id] [int] NOT NULL,
    [iletisim_ilce_id] [int] NOT NULL,
    [mahalle] [text] NULL,
    [cadde] [text] NULL,
    [sokak] [text] NULL,
    [no] [nchar](10) NULL,
    [telefon] [text] NULL,
    [e_posta] [text] NULL) 

	CREATE TABLE [dbo].[tbl_ilceler](
    [ilce_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [ilce_il_id] [int] NOT NULL,
    [ilce_adi] [text] NOT NULL)

	CREATE TABLE [dbo].[tbl_filmler](
	[film_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[film_adi] [text] NOT NULL,
	[film_kategori_id] [int] NOT NULL,
	[film_3d] [bit] NOT NULL,
	[film_afis] [image] NOT NULL)

	CREATE TABLE [dbo].[tbl_bilet](
	[bilet_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[bilet_seans_ve_koltuk_id] [int] NOT NULL,
	[bilet_musteri_id] [int] NOT NULL)

	CREATE TABLE [dbo].[tbl_filmler_ve_yonetmenleri](
	[filmler_ve_yonetmenler_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[film_ve_yonetmenler_film_id] [int] NOT NULL,
	[yonetmen_adi] [text] NOT NULL,
	[yonetmen_soyadi] [text] NOT NULL)

	CREATE TABLE [dbo].[tbl_musteriler](
	[musteri_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[musteri_adi] [text] NOT NULL,
	[musteri_soyadi] [text] NOT NULL,
	[musteri_iletisim_id] [int] NOT NULL)