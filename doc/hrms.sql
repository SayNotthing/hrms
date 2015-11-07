create tablespace hrms
datafile 'E:\app\Administrator\oradata\orcl\hrms.dbf'
size 100M
autoextend on

create user hr001
identified by 123
default tablespace hrms
temporary tablespace temp;

grant connect, resource,dba to hr001;

create table t_user(
       e_id varchar(40) primary key,
       e_name varchar(40) not null,
       e_gender char(1),
       e_department varchar(40),
       e_job varchar(40),
       e_pro_title varchar(100)
);

insert into t_user(e_id,e_name,passwd) values('e001','�Ӵ���','123');
insert into t_user(e_id,e_name,passwd) values('e002','�Ӵ���','123');

select * from t_user for update;

alter table t_user add(passwd varchar(40));
delete from t_user where e_id = 'e001';

select * from t_user where e_name='�Ӵ���' and passwd = '123';

insert into t_user(e_id,e_name,passwd) values('e002','���','123');

update t_user set e_name='rhwayfun',passwd='124'

create table t_dept
(
       dept_id varchar(100) primary key,
       dept_name varchar(255),
       dept_num integer
)

insert into t_dept values('d001','��Ʋ�',10);
insert into t_dept values('d002','��Ϣ��',12);

select * from t_dept for update;

alter table t_dept add(status int);

delete from t_dept where dept_id='d001'

create table t_role
(
	role_id number primary key,
	role_name varchar2(30)
)

alter table t_role modify(role_id varchar(40));

create table t_module
(
	module_id number primary key,
	module_name varchar2(30) not null
)
alter table t_module modify(module_id varchar(40));

insert into t_role values('r001','Java��������ʦ');
insert into t_role values('r002','PHP��������ʦ');

insert into t_module values('m001','��Ա����');

create table t_doc_baseinfo(
       info_id varchar(40) primary key,
       e_name varchar(100),
       gender char(1),
       edu varchar(10),
       degree varchar(10),
       status int
);

insert into t_doc_baseinfo values('b001','�·�','-1','1','4',7);
insert into t_doc_baseinfo values('b002','����','0','2','5',8);
insert into t_doc_baseinfo values('b003','С','0��','3','6',9,'');

alter table t_doc_baseinfo add(pic_path varchar2(255));

alter table t_doc_baseinfo modify(gender char(4));
insert into t_doc_baseinfo values('�·�','Ů','����','ѧʿ',7,'');

insert into t_doc_baseinfo values('С��','��','����','ѧʿ',8,'');
insert into t_doc_baseinfo values('��С��','��','�о���','˶ʿ',9,'');
insert into t_doc_baseinfo values('���ӷ�','��','�о���','��ʿ',9,'');
select * from t_doc_baseinfo where e_name like '%��%';
commit;

