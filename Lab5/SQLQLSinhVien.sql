create database QL_SINHVIEN;
use QL_SINHVIEN
create table tbl_Truong(
	MaTruong nvarchar(5) NOT NULL primary key,
	TenTruong nvarchar(50) NOT NULL
);
create table tbl_Sinhvien(
	MaSV nvarchar(5) NOT NULL primary key,
	TenSV nvarchar(50) NOT NULL,
	Phai nvarchar(5) NOT NULL,
	NgaySinh datetime,
	MaTruong nvarchar(5) NOT NULL,
	foreign key (MaTruong) references tbl_Truong(MaTruong)
);
create table tbl_Monhoc(
	MaMH nvarchar(5) NOT NULL primary key,
	TenMH nvarchar(50) NOT NULL
);
create table tbl_Diem(
	MaSV nvarchar(5) NOT NULL,
	MaMH nvarchar(5) NOT NULL,
	DiemTB float NOT NULL,
	primary key(MaSV,MaMH),
	foreign key (MaSV) references tbl_Sinhvien(MaSV),
	foreign key (MaMH) references tbl_Monhoc(MaMH),
);

insert into tbl_Truong values('MT01',N'ĐH Bách Khoa');
insert into tbl_Truong values('MT02',N'ĐH Kinh Tế');
insert into tbl_Truong values('MT03',N'ĐH Sư Phạm');
insert into tbl_Truong values('MT04',N'ĐH Giao Tông VT');
insert into tbl_Truong values('MT05',N'VTCA');
insert into tbl_Sinhvien values('SV001',N'Nguyễn Văn Hùng',N'Nam','1990-03-12','MT01');
insert into tbl_Sinhvien values('SV002',N'Trần Diệu Nhi',N'Nữ','1990-06-22','MT02');
insert into tbl_Sinhvien values('SV003',N'Phạm Minh Đăng',N'Nam','1990-12-09','MT03');
insert into tbl_Sinhvien values('SV004',N'Nguyễn Anh Đào',N'Nữ','1990-08-12','MT01');
insert into tbl_Sinhvien values('SV005',N'Trần Văn Hưng',N'Nam','1990-09-12','MT02');
insert into tbl_Monhoc values ('MH01',N'Thiết kế web')
insert into tbl_Monhoc values ('MH02',N'Lập trình web')
insert into tbl_Monhoc values ('MH03',N'ASP.NET')
insert into tbl_Monhoc values ('MH04',N'SQL Server')
insert into tbl_Monhoc values ('MH05',N'HTML và CSS')
insert into tbl_Monhoc values ('MH06',N'Lập trình căn bản')
insert into tbl_Diem values('SV001','MH01',9)
insert into tbl_Diem values('SV001','MH02',6.5)
