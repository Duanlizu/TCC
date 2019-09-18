
/*==============================================================*/
/* Table: sys_card                                              */
/*==============================================================*/
create table sys_card 
(
   cardnum              varchar(20)                    not null,
   carnum               varchar(50)                    null,
   in_time              datetime                      null,
   cardname             varchar(10)                    not null,
   cardtime             varchar(20)                    not null,
   carddate             datetime                      not null,
   constraint PK_SYS_CARD primary key (cardnum)
);

/*==============================================================*/
/* Index: sys_card_PK                                           */
/*==============================================================*/
create unique index sys_card_PK on sys_card (
cardnum ASC
);

/*==============================================================*/
/* Index: hold2_FK                                              */
/*==============================================================*/
create index hold2_FK on sys_card (
carnum ASC,
in_time ASC
);

/*==============================================================*/
/* Table: sys_cars                                              */
/*==============================================================*/
create table sys_cars 
(
   carnum               varchar(50)                    not null,
   in_time              datetime                      not null,
   cardnum              varchar(20)                    null,
   out_time             datetime                      not null,
   parking_space        varchar(10)                    not null,
   parkingcost          varchar(20)                    not null,
   constraint PK_SYS_CARS primary key (carnum, in_time)
);

/*==============================================================*/
/* Index: sys_cars_PK                                           */
/*==============================================================*/
create unique index sys_cars_PK on sys_cars (
carnum ASC,
in_time ASC
);

/*==============================================================*/
/* Index: hold_FK                                               */
/*==============================================================*/
create index hold_FK on sys_cars (
cardnum ASC
);

/*==============================================================*/
/* Table: sys_parking                                           */
/*==============================================================*/
create table sys_parking 
(
   parkingnum           varchar(20)                    not null,
   parkingstate         varchar(10)                    not null,
   parkingcarnum        varchar(50)                    null,
   constraint PK_SYS_PARKING primary key (parkingnum)
);

/*==============================================================*/
/* Index: sys_parking_PK                                        */
/*==============================================================*/
create unique index sys_parking_PK on sys_parking (
parkingnum ASC
);

/*==============================================================*/
/* Table: sys_use                                               */
/*==============================================================*/
create table sys_use 
(
   carnum               varchar(50)                    not null,
   in_time              datetime                      not null,
   parkingnum           varchar(20)                    not null,
   carout_time          datetime                      not null,
   constraint PK_SYS_USE primary key (carnum, in_time, parkingnum, carout_time)
);

/*==============================================================*/
/* Index: sys_use_PK                                            */
/*==============================================================*/
create unique index sys_use_PK on sys_use (
carnum ASC,
in_time ASC,
parkingnum ASC,
carout_time ASC
);

/*==============================================================*/
/* Index: Relationship_2_FK                                     */
/*==============================================================*/
create index Relationship_2_FK on sys_use (
carnum ASC,
in_time ASC
);

/*==============================================================*/
/* Index: Relationship_3_FK                                     */
/*==============================================================*/
create index Relationship_3_FK on sys_use (
parkingnum ASC
);

/*==============================================================*/
/* Table: sys_user                                              */
/*==============================================================*/
create table sys_user 
(
   pwd                  varchar(50)                    not null,
   number               varchar(50)                    not null,
   name                 varchar(10)                    not null,
   jobnum               varchar(50)                    not null,
   address              varchar(50)                    not null,
   constraint PK_SYS_USER primary key (number)
);

/*==============================================================*/
/* Index: sys_user_PK                                           */
/*==============================================================*/
create unique index sys_user_PK on sys_user (
number ASC
);

