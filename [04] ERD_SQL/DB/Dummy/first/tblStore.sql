--매점테이블 드랍

--drop table tblStore;
--drop sequence itemSeq;

create table tblStore(
    
    itemSeq number primary key,                -- 제품번호(PK)
    itemName varchar2(50) not null,             -- 제품명
    itemPrice number not null,                    -- 가격
    itemCount number not null,                   -- 제품 수량
    itemClass varchar2(30) not null,              -- 제품 분류(팝콘/음료/티켓/세트)
    itemImage varchar2(100) not null              -- 제품 이미지
   

);

-- 매점 테이블 시퀀스 
create sequence seqStore;



-- 더미데이터

-- 팝콘류 
insert into tblStore values (seqStore.nextVal, '오리지널 팝콘M', 3000, 100, '팝콘', '오리지널팝콘.jpg');
insert into tblStore values (seqStore.nextVal, '오리지널 팝콘L', 3500, 100, '팝콘', '오리지널팝콘.jpg');
insert into tblStore values (seqStore.nextVal, '캬라멜 팝콘M', 3500, 100, '팝콘', '캬라멜팝콘.jpg');
insert into tblStore values (seqStore.nextVal, '캬라멜 팝콘L', 4500, 100, '팝콘', '캬라멜팝콘.jpg');
insert into tblStore values (seqStore.nextVal, '치즈 팝콘M', 3500, 100, '팝콘', '치즈팝콘.jpg');
insert into tblStore values (seqStore.nextVal, '치즈 팝콘L', 4500, 100, '팝콘', '치즈팝콘.jpg');
insert into tblStore values (seqStore.nextVal, '갈릭 팝콘M', 3500, 100, '팝콘', '갈릭팝콘.jpg');
insert into tblStore values (seqStore.nextVal, '갈릭 팝콘L', 4500, 100, '팝콘', '갈릭팝콘.jpg');



-- 음료류
insert into tblStore values (seqStore.nextVal, '콜라M', 2000, 100, '음료', '콜라.jpg');
insert into tblStore values (seqStore.nextVal, '콜라L', 2500, 100, '음료', '콜라.jpg');
insert into tblStore values (seqStore.nextVal, '사이다M', 2000, 100, '음료', '사이다.jpg');
insert into tblStore values (seqStore.nextVal, '사이다L', 2500, 100, '음료', '사이다.jpg');
insert into tblStore values (seqStore.nextVal, 'ICE 파인레몬에이드', 3000, 100, '음료', 'ICE파인레몬에이드.jpg');
insert into tblStore values (seqStore.nextVal, '환타 오렌지M', 2000, 100, '음료', '환타오렌지.jpg');
insert into tblStore values (seqStore.nextVal, '환타 오렌지L', 2500, 100, '음료', '환타오렌지.jpg');
insert into tblStore values (seqStore.nextVal, 'ICE 밀크티', 2500, 100, '음료', 'ICE밀크티.jpg');
insert into tblStore values (seqStore.nextVal, '자몽 에이드', 2500, 100, '음료', '자몽에이드.jpg');
insert into tblStore values (seqStore.nextVal, '오렌지 에이드', 2500, 100, '음료', '오렌지에이드.jpg');



-- 티켓류
insert into tblStore values (seqStore.nextVal, '일반 2D 예매권', 9000, 100, '티켓', '2D티켓.jpg');
insert into tblStore values (seqStore.nextVal, '일반 3D 예매권', 15000, 100, '티켓', '3D티켓.jpg');


-- 세트류

insert into tblStore values (seqStore.nextVal, '싱글 패키지', 17500, 100, '세트', '싱글패키지.jpg');
insert into tblStore values (seqStore.nextVal, '러브콤보 패키지', 30000, 100, '세트', '러브콤보패키지.jpg');
insert into tblStore values (seqStore.nextVal, '더블콤보 패키지', 12000, 100, '세트', '더블콤보.jpg');


--커밋
commit;





