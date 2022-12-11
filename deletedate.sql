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
 sssiakaddd  | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
 template1   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
(15 rows)


postgres=# \c sssiakaddd
You are now connected to database "sssiakaddd" as user "postgres".
sssiakaddd=# \dt
           List of relations
 Schema |   Name    | Type  |  Owner
--------+-----------+-------+----------
 public | dosen     | table | postgres
 public | kuliah    | table | postgres
 public | mahasiswa | table | postgres
(3 rows)


sssiakaddd=# select * from mahasiswa;
   nim    |       nama        |    prodi
----------+-------------------+-------------
 D0221365 | romi ramadhan     | informatika
 D0221095 | wiwi lestiani     | informatika
 D0221096 | Gusmi permatasari | informatika
(3 rows)


sssiakaddd=# delete from mahasiswa where nim ='D0221095';
DELETE 1
sssiakaddd=# select * from mahasiswa;
   nim    |       nama        |    prodi
----------+-------------------+-------------
 D0221365 | romi ramadhan     | informatika
 D0221096 | Gusmi permatasari | informatika
(2 rows)


sssiakaddd=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semester
------------+-------------------------+-----+----------
 INF183219  | Aplikasi Komputer       |   2 |        3
 INF123319  | Basis Data I            |   2 |        3
 INF173319  | Pengembangan Multimedia |   3 |        3
(3 rows)


sssiakaddd=# delete from kuliah where kode_makul='INF173319';
DELETE 1
sssiakaddd=# select * from kuliah;
 kode_makul |    nama_makul     | sks | semester
------------+-------------------+-----+----------
 INF183219  | Aplikasi Komputer |   2 |        3
 INF123319  | Basis Data I      |   2 |        3
(2 rows)


sssiakaddd=# select * from dosen;
   nidn   |               nama               | program_studi
----------+----------------------------------+---------------
 15018805 | Dr. Eng. Amry Dasar, ST., M.Eng. | sipil
 17038904 | Dr. Eng. Sulfayanti, S.Si., MT.  | informatika
 31077904 | Indra, S.Kom.,M.M                | informatika
(3 rows)


sssiakaddd=# delete from dosen where nidn=17038904;
DELETE 1
sssiakaddd=# select * from dosen;
   nidn   |               nama               | program_studi
----------+----------------------------------+---------------
 15018805 | Dr. Eng. Amry Dasar, ST., M.Eng. | sipil
 31077904 | Indra, S.Kom.,M.M                | informatika
(2 rows)


sssiakaddd=#