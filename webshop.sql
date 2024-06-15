use master;
go
drop database if exists webshop;
go
create database webshop collate Croatian_CI_AS;
go
use webshop;

create table proizvodi(
sifra int not null primary key identity (1,1),
naziv varchar(45) not null,
datum_nabave datetime not null,
cijena decimal(18,2) not null,
aktivan bit
);
drop table proizvodi;

create table kupci(
sifra int not null primary key identity(1,1),
ime varchar(40) not null,
prezime varchar(40) not null,
ulica varchar(60)not null,
mjesto varchar(40) not null
);

create table raèuni(
sifra int not null primary key identity (1,1),
datum datetime,
kupac int not null,
status bit
);

drop table raèuni;

create table stavke(
raèun int not null,
proizvod int not null,
kolièina int,
cijena decimal(18,2) not null,
);
drop table stavke;

alter table stavke add foreign key (proizvod) references proizvodi(sifra);
alter table stavke add foreign key (raèun) references raèuni(sifra);
alter table raèuni add foreign key (kupac) references kupci(sifra);