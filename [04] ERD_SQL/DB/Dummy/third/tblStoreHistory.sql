-- tblStoreHistory
drop table tblStoreHistory;
drop sequence seqStoreHistory;

-- 테이블 생성

create table tblStoreHistory (
    storeHistorySeq number primary key,                     -- 매점구매내역번호
    itemSeq number not null references tblStore(itemSeq),   -- 제품번호
    userSeq number not null references tblUser(userSeq),    -- 회원번호
    storeHistoryRegdate date default sysdate not null,      -- 구매날짜         
    storeHistoryCount number not null,                      -- 구매수량
    storeCheck varchar2(1) default 'n' constraint tblStoreHistory_ck check(storeCheck in('y', 'n'))   -- 제품사용여부(y,n)
);

create sequence seqStoreHistory;

-- 테이블 입력
insert into tblStoreHistory values (seqStoreHistory.nextVal, 2, 52, '2021-04-27', 3, 'n');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 3, 72, '2021-07-09', 4, 'n');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 23, 24, '2021-07-06', 1, 'n');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 15, 40, '2021-03-19', 7, 'n');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 20, 83, '2021-05-15', 5, 'y');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 12, 22, '2021-06-25', 8, 'y');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 20, 94, '2021-05-08', 4, 'y');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 2, 76, '2021-05-05', 5, 'n');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 15, 2, '2021-01-16', 4, 'y');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 1, 39, '2021-04-13', 5, 'n');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 5, 1, '2021-01-22', 3, 'n');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 22, 18, '2021-02-08', 1, 'n');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 8, 81, '2021-02-17', 9, 'n');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 20, 25, '2021-06-29', 1, 'y');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 18, 42, '2021-06-05', 2, 'n');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 7, 35, '2021-04-16', 6, 'n');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 3, 52, '2021-04-29', 7, 'y');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 18, 100, '2021-02-06', 8, 'y');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 7, 25, '2021-01-29', 9, 'y');
insert into tblStoreHistory values (seqStoreHistory.nextVal, 20, 15, '2021-01-13', 9, 'n');
commit;

select * from tblStoreHistory;