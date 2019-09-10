mysql数据库操作ddl
数据库操作  创建，删除
create database database-name；
drop database database-name；
表的操作  创建  删除 改名
create table table-name（column-name，column-type）。每个表最少要一个column
drop table table-name；
alter table table-name  rename to new-table-name；
列操作  增加  删除 改名 改数据类型
除了在创建表的时候定义列，其他的都是在alter table命令下操作列
alter table table-name add column column-name column-type；
或者alter table table-name add column-name column-type；
同时增加多行的操作是 alter table table-name add （column-name column-type，
column-name column-type）；
其实在增加列的时候只记住第二种方法就可以。
删除列的时候  
alter table talbe-name drop column-name或者
alter table talbe-name drop  column column-name；
删除多列的时候是  alter table talbe-name drop  column column-name，drop column column-name；
改列的名字  alter talbe table-name rename column to new-name；
改列的数据类型是   alter table table-name modify column-name column-type；
更改列名和数据类型 alter talbe table-name change column-name new-name new-type；
和以上一样可以加column在column-那么以前或者不加
然后是约束constaint的创建 删除
可以在创建表的时候创建，也可以在之后用alter table 去增加或者删除

null 约束在创建表示增加
之后是用modify命令执行 比如
alter table table-name modify column-name column-type not null；

unique约束创建和注销
mysql创建表的时候用 unique（） 函数和primary key一样
但是其他的数据库直接在数据类型之后直接加unique命令
之后用alter table table-name add、unique（column-name）mysql与其他数据库一样
增加多行unique约束时用 alter table talbe-name add constarint constarint-name unique（column-name1，column-name2）；
用create table table-name可以查看表的结构其中能够看到列的约束以及约束的别名
撤销unique约束的方式 mysql alter table talbe-name drop index constraint-name
其他为 mysql alter table talbe-name drop constraint constraint-name
、
primary key 约束，可以在创建表示创建 mysql用primary key（column-name）函数
其他直接在数据类型后面加primary key命令

而增加多个列为primary key是都是用函数的形式
constraint constraint-name primary-key（column-name1，column-name2）

之后用alter table 命令
为alter table table-name add primary key（conlumn-name）；
增加多行为 table table-name add constraint constraint-name primary key（conlumn-name1，conlumn-name2）；
删除时为alter table table-name drop primary key；mysql方式
而其他为alter table table-name drop constraint constarint-name

foreign key 约束
必须是在有子表的情况下农  在创建表的时候是
create table table-name（column-name column-type。foreign key（column-name）references
subtable-name（conlumn-name）；
而其他的数据库和primary key一样，直接加在数据类型后面即可。
之后用alter table命令
语法为alter table table-name add foreign key（conlumn-name）references subtable-name
（column-name）；
增加多行
alter table table-name add constarint constraint-name foreign key（conlumn-name）references subtable-name
（column-name）；
注销外键的方法 alter table table-name drop foreign key name；
其他数据库为alter table table-name drop constraint name
收关键字