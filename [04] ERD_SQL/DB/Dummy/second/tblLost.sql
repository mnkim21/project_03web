drop table tblLost;
create table tblLost (
    lostSeq number primary key,
    userSeq number not null references tblUser(userSeq),   
    theaterName varchar2(50) not null,
    lostTitle varchar2(100) not null,
    lostContent varchar2(2000) not null,	
    lostDate date not null,                   
    lostStatus varchar2(20) not null,
    lostPw varchar2(50) not null,
    lostComment varchar2(1) not null
);

create sequence seqLost;


insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,1,'극장이름','핸드폰을 잃어버렸습니다. 확인 부탁드립니다.','검정색 핸드폰을 1극장에서 잃어버렸습니다. 확인 부탁드립니다.','2021-07-31','접수중','f23gh4','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,5,'극장이름','안경을 잃어버렸습니다. 찾아주세요.','하얀 안경을 4극장에서 잃어버렸습니다. 확인해주세요.','2021-07-21','접수완료','542k3k','y');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,28,'극장이름','핸드폰을 잃어버렸습니다. 확인해주세요.','파란색 핸드폰을 1극장에서 잃어버렸습니다. 찾아주세요.','2021-07-29','접수중','34k5jlll','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,50,'극장이름','지갑을 잃어버렸습니다. 찾아주세요.','노란색 지갑을 2극장에서 잃어버렸습니다. 확인해주세요.','2021-07-16','접수완료','9sfdoi8','y');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,22,'극장이름','모자를 잃어버렸습니다. 확인 부탁드립니다.','검정색 모자를 3극장에서 잃어버렸습니다. 확인 부탁드립니다.','2021-07-30','접수중','f23gh4','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,33,'극장이름','핸드폰을 잃어버렸습니다. 찾아주세요.','파란색 핸드폰을 1극장에서 잃어버렸습니다. 찾아주세요.','2021-07-28','접수중','0f8dxz','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,45,'극장이름','모자를 잃어버렸습니다. 확인 부탁드립니다.','초록색 모자을 2극장에서 잃어버렸습니다. 확인 부탁드립니다.','2021-07-11','접수완료','93247zzz','y');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,11,'극장이름','핸드폰을 잃어버렸습니다. 확인 부탁드립니다.','검정색 핸드폰을 2극장에서 잃어버렸습니다. 찾아주세요.','2021-07-31','접수중','8776b87','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,85,'극장이름','지갑을 잃어버렸습니다. 확인해주세요.','하얀색 지갑을 5극장에서 잃어버렸습니다. 찾아주세요.','2021-07-30','접수중','889866','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,7,'극장이름','안경을 잃어버렸습니다. 찾아주세요.','하얀색 안경을 4극장에서 잃어버렸습니다. 확인해주세요.','2021-07-12','접수완료','098cx9','y');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,64,'극장이름','안경을 잃어버렸습니다. 확인해주세요.','초록색 안경을 4극장에서 잃어버렸습니다. 확인 부탁드립니다.','2021-07-26','접수중','fghhy7','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,72,'극장이름','핸드폰을 잃어버렸습니다. 찾아주세요.','하얀색 핸드폰을 1극장에서 잃어버렸습니다. 확인해주세요.','2021-07-27','접수중','asdf122','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,17,'극장이름','핸드폰을 잃어버렸습니다. 찾아주세요.','검정색 핸드폰을 3극장에서 잃어버렸습니다. 찾아주세요.','2021-07-30','접수중','asdw311','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,92,'극장이름','핸드폰을 잃어버렸습니다. 확인해주세요.','파란색 핸드폰을 2극장에서 잃어버렸습니다. 확인 부탁드립니다.','2021-07-29','접수중','124412s','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,81,'극장이름','카드를 잃어버렸습니다. 확인 부탁드립니다.','파란색 카드를 3극장에서 잃어버렸습니다. 찾아주세요.','2021-07-31','접수중','s9dsdw','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,27,'극장이름','카드를 잃어버렸습니다. 확인해주세요.','하얀색 카드를 5극장에서 잃어버렸습니다. 찾아주세요.','2021-07-18','접수완료','12421sd','y');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,19,'극장이름','지갑을 잃어버렸습니다. 찾아주세요.','하얀색 지갑을 4극장에서 잃어버렸습니다. 확인해주세요.','2021-07-27','접수중','21awwq','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,47,'극장이름','안경을 잃어버렸습니다. 찾아주세요.','검정색 안경을 3극장에서 잃어버렸습니다. 찾아주세요.','2021-07-13','접수완료','saddfs','y');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,39,'극장이름','카드를 잃어버렸습니다. 확인 부탁드립니다.','초록색 카드를 1극장에서 잃어버렸습니다. 찾아주세요.','2021-07-07','접수완료','21h3js','y');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,55,'극장이름','모자를 잃어버렸습니다. 확인해주세요.','검정색 모자를 5극장에서 잃어버렸습니다. 확인 부탁드립니다.','2021-07-27','접수중','sadf76','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,10,'극장이름','지갑을 잃어버렸습니다. 확인부탁드립니다.','검정색 지갑을 4극장에서 잃어버렸습니다. 확인 부탁드립니다','2021-07-09','접수완료','gfrww7','y');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,6,'극장이름','안경을 잃어버렸습니다. 확인부탁드립니다.','노란색 안경을 5극장에서 잃어버렸습니다. 찾아주세요','2021-07-29','접수중','hkjwl11','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,7,'극장이름','핸드폰을 잃어버렸습니다. 확인부탁드립니다.','하얀색 핸드폰을 2극장에서 잃어버렸습니다. 확인 부탁드립니다.','2021-07-30','접수중','oiowkr37','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,1,'극장이름','지갑을 잃어버렸습니다. 확인부탁드립니다.','초록색 지갑을 1극장에서 잃어버렸습니다. 확인해주세요','2021-07-27','접수완료','eqo12d9','y');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,12,'극장이름','모자를 잃어버렸습니다. 확인부탁드립니다.','검정색 모자를 3극장에서 잃어버렸습니다. 찾아주세요','2021-07-26','접수중','kwaiq5v2','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,3,'극장이름','카드를 잃어버렸습니다. 확인부탁드립니다.','파란색 카드를 2극장에서 잃어버렸습니다. 찾아주세요','2021-07-16','접수완료','axno8eq','y');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,99,'극장이름','지갑을 잃어버렸습니다. 확인부탁드립니다.','하얀색 지갑을 1극장에서 잃어버렸습니다. 찾아주세요','2021-07-28','접수중','jtr34d','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,65,'극장이름','핸드폰을 잃어버렸습니다. 확인부탁드립니다.','검정색 핸드폰을 5극장에서 잃어버렸습니다. 확인 부탁드립니다','2021-07-31','접수중','vme88e2','n');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,22,'극장이름','카드를 잃어버렸습니다. 확인부탁드립니다.','노란색 카드를 2극장에서 잃어버렸습니다. 확인해주세요','2021-07-18','접수완료','ejdfp7r10','y');
insert into tblLost (lostSeq,userSeq,theaterName,lostTitle,lostContent,lostDate,lostStatus,lostPw,lostComment) values(seqLost.nextVal,48,'극장이름','안경을 잃어버렸습니다. 확인부탁드립니다.','초록색 안경을 4극장에서 잃어버렸습니다. 확인 부탁드릴께요','2021-07-07','접수완료','2mfp5tt','y');


select*from tblLost;
