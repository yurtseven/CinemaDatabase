CREATE DATABASE veritabani
CONTAINMENT = NONE
ON PRIMARY
(NAME = N'veritabani'
,
FILENAME = N'C:\Veriler\veritabani.mdf' ,
SIZE = 10240KB , MAXSIZE = 51200KB ,
FILEGROWTH = 5120KB )
LOG ON
( NAME = N'veritabani_log'
,
FILENAME =
N'C:\Veriler\veritabani.ldf' ,
SIZE = 768KB , MAXSIZE = UNLIMITED,
FILEGROWTH = 10%)
GO