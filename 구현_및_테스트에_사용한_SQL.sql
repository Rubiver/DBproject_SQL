insert into test(password) values(hex(aes_encrypt('123456','a')));
select * from member where mPW=hex(aes_encrypt('123','a'));
select * from member where mPW=aes_decrypt(unhex('A5C4844C9A19B288B4408F2884DE8985'),'a');
insert into test(password) values(aes_decrypt(unhex('BE128CFEBC827BFAE1548E3354BF8D14'),'a'));
select * from test;
alter table reply add mID varchar(500) not null;
alter table reply add pID int not null;
alter table reply add foreign key(mID) references member(mID) on delete cascade;
alter table reply add foreign key(pID) references product(pID) on delete cascade;
alter table reply add constraint ADDCASCADE foreign key(mID) references member(mID) on delete cascade;
alter table reply add constraint ADDCASCADE2 foreign key(pID) references product(pID) on delete cascade;

insert into reply(nID,rREPLY,mID,pID) values(1,"123123","kwonbiver","1");

DELETE FROM member WHERE mID = "rem123";

alter table cart add foreign key(pID) references product(pID) on delete cascade;
alter table orders add foreign key(pID) references product(pID) on delete cascade;
alter table reply add foreign key(pID) references product(pID) on delete cascade;
alter table wishlist add foreign key(pID) references product(pID) on delete cascade;
alter table notice add foreign key(pID) references product(pID) on delete cascade;


DROP TABLE member;
DROP TABLE product;
DROP TABLE cart;
DROP TABLE orders;
DROP TABLE orders_detail;
DROP TABLE notice;

CREATE TABLE MEMBER(
    mID VARCHAR(500) not null,
    mPW VARCHAR(50), 
    mNAME VARCHAR(100),
    mADDRESS VARCHAR(500),
    mCASH int default 0,
    mPHONENUM VARCHAR(300),
    mBIRTH DATE,
    mLEVEL INT(1) DEFAULT 1,
    primary key(mID)
);
insert into member values("kwonbiver", '12345', '권석경', '천안시 서북구 두정동 오성 8길 40', 0, '01096238879', '19991006', 4);

insert into member(mID) value("t3");

CREATE TABLE PRODUCT(
    pID INT(4) AUTO_INCREMENT not null,
    pNAME VARCHAR(100),
    pPRICE INT(10),
    pSTOCK INT(3),
    pIMAGE1 VARCHAR(1000),
    pIMAGE2 VARCHAR(1000),
    pIMAGE3 VARCHAR(1000),
    pDETAIL LONGTEXT,
    pHIT INT(10) DEFAULT 0,
    pCATEGORY varchar(100),
    pVIEW int default 0,
    primary key(pID)
);
insert into product values(0001,'나이키모자',19000,100,"https://thumbnail8.coupangcdn.com/thumbnails/remot…dd26dc232fa784a9d219f998538c9ee401f9edd347c2f.JPG", null, null,
"나이키모자이다.",0,"CAP");
ALTER TABLE product ADD pVIEW int default 0;
ALTER TABLE product CHANGE pIMAGE2 pIMAGE2 blob;

CREATE TABLE wishlist(
    wID INT(4) AUTO_INCREMENT not null ,
    mID VARCHAR(500),
    pID INT(4),
    wQTY int(3) default 1,
    primary key(wID),
    foreign key(mID) REFERENCES member(mID),
    foreign key(pID) REFERENCES product(pID)
);

ALTER TABLE wishlist ADD wNAME varchar(100);
ALTER TABLE wishlist drop wNAME;
Insert into wishlist(mID, pID, wQUANTITY, wNAME) values("test1",2,1,"노페 패딩");
ALTER TABLE wishlist CHANGE wQUANTITY wQTY int default 1;

CREATE TABLE cart(
    cID INT(10) AUTO_INCREMENT not null,
    mID VARCHAR(500),
    pID INT(4),
    cQTY INT(3) DEFAULT 1,
    cPRICE int(10) default 0,
    primary key(cID),
    foreign key(mID) REFERENCES member(mID),
    foreign key(pID) REFERENCES product(pID)
);

alter table cart add cNAME varchar(100);
alter table cart drop pNAME;



CREATE TABLE ORDERS(
    oID INT(10) AUTO_INCREMENT not null ,
    mID VARCHAR(500),
    pID int not null,
    oNAME VARCHAR(100),
    oPHONENUM VARCHAR(300),
    oADDRESS VARCHAR(500),
    oQTY INT(3) default 1,
    oDATE date,
    oPRICE int,
    primary key(oID),
    foreign key(mID) REFERENCES member(mID),
    foreign key(pID) REFERENCES product(pID)
);
ALTER TABLE orders ADD pID int not null;
ALTER TABLE orders ADD oDATE DATE;
ALTER TABLE orders ADD oPRICE int;
ALTER TABLE orders ADD foreign key(pID) references product(pID) on delete cascade;
ALTER TABLE orders CHANGE oAMOUNT oQTY int(3) default 1;


drop table orders_detail;
CREATE TABLE ORDERS_DETAIL(
    odID INT(10) not null ,
    oID INT(10),
    pID INT(4),
    odQTY INT(3),
    odDELIVERYSTATUS VARCHAR(500),
    primary key(odID),
    foreign key(oID) REFERENCES orders(oID),
    foreign key(pID) REFERENCES product(pID)
);

drop table notice;

CREATE TABLE NOTICE(
    nID INT(4) AUTO_INCREMENT not null,
    nWRITER VARCHAR(100),
    nPW VARCHAR(100),
    nTITLE VARCHAR(100),
    nCONTENT LONGTEXT,
    nFILE VARCHAR(1000),
    nREPLY VARCHAR(500),
    nDATE date,
    views int default 0,
    nCATEGORY int(4),
    primary key(nID)
);

ALTER TABLE NOTICE ADD nCATEGORY int(4);

CREATE TABLE REPLY(
rID int(4) AUTO_INCREMENT not null,
nID INT(4) not null,
mID VARCHAR(500) not null,
pID int(4) not null,
rREPLY varchar(500) default "None",
rRATING float default 0,
primary key(rID),                                               
foreign key(nID) references NOTICE(nID),
foreign key(mID) references member(mID),
foreign key(pID) references product(pID)
);
alter table reply change rRATING rRATING float default 0;

ALTER TABLE REPLY AUTO_INCREMENT=1;
SET @COUNT = 0;
UPDATE REPLY SET rID = @COUNT:=@COUNT+1;

SELECT distinct * FROM product,orders where product.pID = orders.pID and orders.mID = "admin";
SELECT distinct product.pID, product.pIMAGE1 FROM product, wishlist where product.pID = wishlist.pID and wishlist.pID = 3;
SELECT distinct * FROM product,wishlist where product.pID = wishlist.pID and mID = "admin";
SELECT distinct * FROM product,cart where product.pID = cart.pID and mID = "201805144";

delete from product where pID = "1";
Insert into cart(mID, pID, cQTY, cPRICE, cNAME) values("201805144", 2, 5, (select pPRICE from product where pID = 3) , "라우렐 후디");
Insert into cart(mID, pID, cQTY, cPRICE, cNAME) values("admin", 2, 5, (select pPRICE from product where pID = 3) , "라우렐 후디");
Insert into cart(mID, pID, cQTY, cPRICE, cNAME) values("201805144", 3, 5, (select pPRICE from product where pID = 2) , "노페 패딩");
delete from reply where mID='kwonbiver';
insert into reply(nID,rREPLY,mID,pID) values(1,"123","kwonbi","2");
delete from member where mID="kwonbi";
