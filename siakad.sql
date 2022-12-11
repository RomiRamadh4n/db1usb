Microsoft Windows [Version 10.0.22000.1219]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LENOVO>cd "C:\Program Files\PostgreSQL\14\bin"

C:\Program Files\PostgreSQL\14\bin>psql -U postgres -h localhost
Password for user postgres:
psql (14.6)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# \list
                                              List of databases
    Name     |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-------------+----------+----------+------------------------+------------------------+-----------------------
 informatika | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siaakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaadd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakadd     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaddd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakkad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siiakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siswa       | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakadd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
 template1   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
(14 rows)


postgres=# create database sssiakaddd
postgres-# create database sssiakaddd;
ERROR:  syntax error at or near "create"
LINE 2: create database sssiakaddd;
        ^
postgres=# create database sssiakaddd;
CREATE DATABASE
postgres=# \list
                                              List of databases
    Name     |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-------------+----------+----------+------------------------+------------------------+-----------------------
 informatika | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siaakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaadd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakadd     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaddd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakkad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siiakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siswa       | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakadd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 sssiakaddd  | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
 template1   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
(15 rows)


postgres=# \c sssiakaddd
You are now connected to database "sssiakaddd" as user "postgres".
sssiakaddd=# create table mahasiswa(nim varchar(30) not null primay key,nama varchar (50),prodi varchar(50));
ERROR:  syntax error at or near "primay"
LINE 1: create table mahasiswa(nim varchar(30) not null primay key,n...
                                                        ^
sssiakaddd=# \d mahasiswa;
Did not find any relation named "mahasiswa".
sssiakaddd=# create table mahasiswa(nim varchar(30) not null primary key,nama varchar (50),prodi varchar(50));
CREATE TABLE
sssiakaddd=# \d mahasiswa;
                    Table "public.mahasiswa"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 nim    | character varying(30) |           | not null |
 nama   | character varying(50) |           |          |
 prodi  | character varying(50) |           |          |
Indexes:
    "mahasiswa_pkey" PRIMARY KEY, btree (nim)


sssiakaddd=# create table dosen(nidn int not null primary key,nama varchar (50), program_studi varchar(50));
CREATE TABLE
sssiakaddd=# \d dosen;
                          Table "public.dosen"
    Column     |         Type          | Collation | Nullable | Default
---------------+-----------------------+-----------+----------+---------
 nidn          | integer               |           | not null |
 nama          | character varying(50) |           |          |
 program_studi | character varying(50) |           |          |
Indexes:
    "dosen_pkey" PRIMARY KEY, btree (nidn)


sssiakaddd=# create table kuliah(kode_makul varchar(30) not null primary key,nama_makul varchar (50),sks int,semester int);
CREATE TABLE
sssiakaddd=# \d kuliah
                        Table "public.kuliah"
   Column   |         Type          | Collation | Nullable | Default
------------+-----------------------+-----------+----------+---------
 kode_makul | character varying(30) |           | not null |
 nama_makul | character varying(50) |           |          |
 sks        | integer               |           |          |
 semester   | integer               |           |          |
Indexes:
    "kuliah_pkey" PRIMARY KEY, btree (kode_makul)


sssiakaddd=# \d mahasiswa;
                    Table "public.mahasiswa"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 nim    | character varying(30) |           | not null |
 nama   | character varying(50) |           |          |
 prodi  | character varying(50) |           |          |
Indexes:
    "mahasiswa_pkey" PRIMARY KEY, btree (nim)


sssiakaddd=# insert into mahasiswa (nim,nama,prodi) values ('D0221365','romi ramadhan','informatika'),('D0221096','gusmi permatasari','informatika'),('D0221095','wiwi lestiani','informatika');
INSERT 0 3
sssiakaddd=# select * from mahasiswa;
   nim    |       nama        |    prodi
----------+-------------------+-------------
 D0221365 | romi ramadhan     | informatika
 D0221096 | gusmi permatasari | informatika
 D0221095 | wiwi lestiani     | informatika
(3 rows)


sssiakaddd=# insert into dosen (nidn,nama,program_studi) values (0015018805,'Dr. Eng. Amry Dasar, ST., M.Eng.','sipil'),(0017038904,'Dr. Eng. Sulfayanti, S.Si., MT.','informatika'),(0031077904,'Indra, S.Kom.,M.M','informatika');
INSERT 0 3
sssiakaddd=# select * from dosen;
   nidn   |               nama               | program_studi
----------+----------------------------------+---------------
 15018805 | Dr. Eng. Amry Dasar, ST., M.Eng. | sipil
 17038904 | Dr. Eng. Sulfayanti, S.Si., MT.  | informatika
 31077904 | Indra, S.Kom.,M.M                | informatika
(3 rows)


sssiakaddd=# \d kuliah;
                        Table "public.kuliah"
   Column   |         Type          | Collation | Nullable | Default
------------+-----------------------+-----------+----------+---------
 kode_makul | character varying(30) |           | not null |
 nama_makul | character varying(50) |           |          |
 sks        | integer               |           |          |
 semester   | integer               |           |          |
Indexes:
    "kuliah_pkey" PRIMARY KEY, btree (kode_makul)


sssiakaddd=# insert into kuliah (kode_makul,nama_makul,sks,semester) values ('INF183219','Aplikasi Komputer',2,3),('INF173319','Pengembangan Multimedia',3,3),('INF123319','Basis Data I',2,3);
INSERT 0 3
sssiakaddd=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semester
------------+-------------------------+-----+----------
 INF183219  | Aplikasi Komputer       |   2 |        3
 INF173319  | Pengembangan Multimedia |   3 |        3
 INF123319  | Basis Data I            |   2 |        3
(3 rows)


sssiakaddd=# select * from mahasiswa;
   nim    |       nama        |    prodi
----------+-------------------+-------------
 D0221365 | romi ramadhan     | informatika
 D0221096 | gusmi permatasari | informatika
 D0221095 | wiwi lestiani     | informatika
(3 rows)


sssiakaddd=# update mahasiswa set nama='Gusmi permatasari' where nim = 'D0221096';
UPDATE 1
sssiakaddd=# select * from mahasiswa;
   nim    |       nama        |    prodi
----------+-------------------+-------------
 D0221365 | romi ramadhan     | informatika
 D0221095 | wiwi lestiani     | informatika
 D0221096 | Gusmi permatasari | informatika
(3 rows)


sssiakaddd=# select * from dosen;
   nidn   |               nama               | program_studi
----------+----------------------------------+---------------
 15018805 | Dr. Eng. Amry Dasar, ST., M.Eng. | sipil
 17038904 | Dr. Eng. Sulfayanti, S.Si., MT.  | informatika
 31077904 | Indra, S.Kom.,M.M                | informatika
(3 rows)


sssiakaddd=# update dosen set nama='Indra' where nidn = 31077905;
UPDATE 0
sssiakaddd=# select * from dosen;
   nidn   |               nama               | program_studi
----------+----------------------------------+---------------
 15018805 | Dr. Eng. Amry Dasar, ST., M.Eng. | sipil
 17038904 | Dr. Eng. Sulfayanti, S.Si., MT.  | informatika
 31077904 | Indra, S.Kom.,M.M                | informatika
(3 rows)


sssiakaddd=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semester
------------+-------------------------+-----+----------
 INF183219  | Aplikasi Komputer       |   2 |        3
 INF173319  | Pengembangan Multimedia |   3 |        3
 INF123319  | Basis Data I            |   2 |        3
(3 rows)


sssiakaddd=# update kuliah set sks=3 where kode_makul='INF173319';
UPDATE 1
sssiakaddd=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semester
------------+-------------------------+-----+----------
 INF183219  | Aplikasi Komputer       |   2 |        3
 INF123319  | Basis Data I            |   2 |        3
 INF173319  | Pengembangan Multimedia |   3 |        3
(3 rows)


sssiakaddd=#