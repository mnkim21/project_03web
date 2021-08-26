-- 쿠폰 보유 테이블
-- drop table tblCouponHave;
-- drop sequence SeqcouponHave;

create table tblCouponHave (

    couponHaveSeq number primary key ,                                 -- 쿠폰보유번호(PK) 
    userSeq number not null references tblUser (userSeq),             -- 회원번호(FK)			
    couponSeq number not null references tblCoupon (couponSeq)     -- 쿠폰번호(FK)

);

create sequence SeqcouponHave;


-- 더미데이터( 회원 50명에게 쿠폰)
insert into tblCouponHave values(SeqcouponHave.nextVal, 82, 2 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 87, 5 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 19, 4 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 81, 4 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 9, 5 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 26, 4 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 29, 4 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 80, 4 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 88, 5 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 23, 4 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 54, 1 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 72, 2 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 37, 3 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 86, 1 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 31, 6 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 34, 2 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 34, 3 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 55, 6 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 56, 1 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 26, 4 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 100, 2 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 35, 4 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 59, 3 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 86, 1 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 15, 1 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 58, 2 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 1, 2 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 14, 1 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 37, 3 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 49, 3 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 11, 6 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 65, 4 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 60, 2 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 100, 6 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 96, 6 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 66, 5 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 93, 3 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 46, 6 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 86, 2 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 94, 4 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 93, 4 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 31, 5 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 12, 2 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 88, 3 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 66, 1 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 20, 3 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 3, 1 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 28, 3 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 72, 1 );
insert into tblCouponHave values(SeqcouponHave.nextVal, 65, 5 );

--커밋
commit;
