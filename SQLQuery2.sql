use master;
go
drop database if exists opcine;
go
create database opcine;
go
use opcine;

create table nacelnici(
sifra int not null primary key identity(1,2),
ime varchar(50) not null,
prezime varchar(50) not null,
datum_rodjenja date not null
);

drop table nacelnici;


insert into nacelnici (ime, prezime, datum_rodjenja) values
('Mateja', 'Pavlinu�i�','1990-07-31' ),
('�imun','Pavlinu�i�', '2019-05-04' ),
('Jona', 'Pavlinu�i�', '2020-03-31' ),
('Marta', 'Pavlinu�i�','2024-10-16'),
('Ante', 'Pavlinu�i�', '1987-02-10' );

	
select * from nacelnici;