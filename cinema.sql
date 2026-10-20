drop database if exists cinema;
create database cinema;
use cinema;

create table attore(
    id int primary key,
    nome_arte text,
    nome text,
    cognome text
);

create table casa_di_produzione(
    id int primary key,
    nome text,
    localita text
);

create table film(
    id int primary key,
    titolo text,
    id_attore_principale int,
    id_casa_produzione int,
    foreign key(id_attore_principale) references attore(id),
    foreign key(id_casa_produzione) references casa_di_produzione(id)
);

delimiter $$

create procedure tutti_film()
begin
    select * from film;
end $$

delimiter ;



insert into casa_di_produzione values
    (1, "Warner Bros", "California"),
    (2, "Paramount", "Hollywood");

insert into attore values
    (1, "Angelina Jolie", "Angelina Jolie", "Voight"),
    (2, "Brad Pitt", "William Bradley", "Pitt");

insert into film values
    (1, "Ragazze interrotte", 1, 1),
    (2, "Lara Croft: Tomb Raider", 1, 1),
    (3, "Fight Club", 2, 2);
