--쿠폰사용상태
-- drop table tblCouponStatus;
-- drop sequence couponstatusSeq;


create table tblCouponStatus(

 couponstatusSeq number primary key,                                -- 쿠폰상태번호(PK)
 couponUseDate date,                                                   -- 쿠폰사용일
 couponHaveSeq number references tblCouponHave (couponHaveSeq)  -- 쿠폰보유번호(PK)

);

-- 쿠폰 사용 상태 시퀀스
create sequence seqCouponStatus;

--더미데이터

insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-09', 1);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-03', 2);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-26', 3);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-06', 4);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-04', 5);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-28', 6);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-14', 7);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-11', 8);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-24', 9);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-04', 10);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-16', 11);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-06', 12);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-08', 13);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-10', 14);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-08', 15);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-28', 16);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-18', 17);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-27', 18);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-01', 19);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-12', 20);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-22', 21);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-19', 22);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-03', 23);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-25', 24);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-23', 25);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-25', 26);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-25', 27);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-05', 28);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-20', 29);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-02', 30);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-11', 31);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-08', 32);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-11', 33);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-12', 34);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-28', 35);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-04', 36);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-21', 37);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-05', 38);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-24', 39);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-07', 40);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-17', 41);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-26', 42);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-20', 43);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-14', 44);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-15', 45);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-03', 46);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-30', 47);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-20', 48);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-18', 49);
insert into tblCouponStatus values(seqCouponStatus.nextVal, '2021-07-30', 50);

select * from tblCouponStatus;
--커밋
commit;
