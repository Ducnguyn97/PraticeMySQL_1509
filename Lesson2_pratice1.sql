create database QuanLyDiemThi;

use QuanLyDiemThi;

create table HocSinh(
MaHS varchar(20) primary key,
TenHS varchar(50) not null,
NgaySinh date not null,
Lop varchar(20) not null,
GT varchar(20) not null
);

create table MonHoc(
MaMH varchar(20) primary key,
TenMH varchar(50) not null,
MaGV varchar(20) not null
);

create table BangDiem(
MaHS varchar(20) not null,
MaMH varchar(20) not null,
Diemthi int,
primary key(MaHS, MaMH),
foreign key(MaHS) references HocSinh(MaHS),
foreign key(MaMH) references MonHoc(MaMH)
);

create table GiaoVien(
MaGV varchar(20) primary key not null,
TenGV varchar(20) not null,
SDT varchar(10) not null
);

alter table MonHoc add constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV); 

insert into GiaoVien(MaGV, TenGV, SDT)
values ('GV01', 'Luan', '0947120940');

insert into MonHoc(MaMH, TenMH, MaGV)
values('T01', 'Toan', 'GV01');

insert into HocSinh(MaHS, TenHs, NgaySinh, Lop, GT)
values ('HS01', 'Duc','1997-01-08', 'C06','GT01');


insert into BangDiem(MaHS, MaMH, DiemThi)
values ('HS01', 'T01', 8);



select * from HocSinh;
select * from MonHoc;
select * from GiaoVien;
select * from BangDiem;






