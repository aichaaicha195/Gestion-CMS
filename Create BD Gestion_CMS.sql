create database Gestion_CMS
on
primary (name= Gestion_CMS_data,
    filename='E:\Gest_CMS\Gestion_CMS_data.mdf', 
	size=10MB,
	maxsize=100MB,
	filegrowth=20%)
	LOG ON (name=Gestion_CMS_log,
	filename='E:\Gest_CMS\Gestion_CMS_log.ldf',
	size=3MB,
	maxsize=20MB,
	filegrowth=1MB)