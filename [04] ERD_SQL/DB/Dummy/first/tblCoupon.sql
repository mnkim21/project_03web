--쿠폰테이블 드랍
--drop table tblCoupon;
--drop sequence seqCoupon;

-- 쿠폰 테이블 생성


create table tblCoupon(
    
    couponSeq number primary key,            -- 쿠폰 번호, PK
    couponType varchar2(50) not null,          -- 쿠폰 분류
    couponName varchar2(50) not null,         -- 쿠폰 이름
    couponContent varchar2(2000) not null,    -- 쿠폰 내용
    couponExpireDate date not null             -- 쿠폰 유효 기간

);

-- 쿠폰 번호 시퀀스 생성
create sequence Seqcoupon;




--======================================================================

-- tblCoupon
-- 쿠폰 테이블, 쿠폰종류 5개
-- couponSeq = 쿠폰 번호(PK), couponType = 쿠폰 분류, couponName = 쿠폰 이름, couponContent = 쿠폰내용, couponExpireDate = 쿠폰 유효기간

insert into tblCoupon(couponSeq, couponType, couponName, couponContent, couponExpireDate) 
values (Seqcoupon.nextVal, '매표', '2021년 2D영화 3천원 할인', '유의사항 : 유효기간 내 1회 사용 가능 (예매 취소시 유효기간이 지난 쿠폰은 재사용 불가)
유효기간 만료 및 쿠폰 분실/훼손/등록 후 폐기로 인한 번호 확인/환불/재발급 불가,
조조/심야/문화의날/어린이/우대/이벤트가 제외하며 타 쿠폰/포인트 등 할인이나 중복 적용 불가,
3D/특별콘텐트/특별관/특별석(로얄석 및 커플석 등) 등 일부 극장 사용 불가,
극장별, 배급사 요청에 따라 2D영화여도 사용 불가 경우 있음,
온라인 예매 전용으로 현장에서 사용 불가,
홈페이지 내 이벤트 페이지 세부 확인 및 고객센터 1:1 문의 가능,
비매품으로 타인에게 판매 및 현금 환불 불가,
사용 방법: 최종 결제 단계에서 선택', '2021-12-31');


insert into tblCoupon(couponSeq, couponType, couponName, couponContent, couponExpireDate) 
values (Seqcoupon.nextVal, '매표', '2D영화 10% 할인', '유의사항 : 유효기간 내 1회 사용 가능 (예매 취소시 유효기간이 지난 쿠폰은 재사용 불가)
유효기간 만료 및 쿠폰 분실/훼손/등록 후 폐기로 인한 번호 확인/환불/재발급 불가,
조조/심야/문화의날/어린이/우대/이벤트가 제외하며 타 쿠폰/포인트 등 할인이나 중복 적용 불가,
3D/특별콘텐트/특별관/특별석(로얄석 및 커플석 등) 등 일부 극장 사용 불가,
극장별, 배급사 요청에 따라 2D영화여도 사용 불가 경우 있음,
온라인 예매 전용으로 현장에서 사용 불가,
홈페이지 내 이벤트 페이지 세부 확인 및 고객센터 1:1 문의 가능,
비매품으로 타인에게 판매 및 현금 환불 불가,
사용 방법: 최종 결제 단계에서 선택', '2021-08-31');


insert into tblCoupon(couponSeq, couponType, couponName, couponContent, couponExpireDate) 
values (Seqcoupon.nextVal, '매표', '(상반기)VIP영화티켓', '유의사항 : 유효기간 내 1회 사용 가능 (예매 취소시 유효기간이 지난 쿠폰은 재사용 불가)
유효기간 만료 및 쿠폰 분실/훼손/등록 후 폐기로 인한 번호 확인/환불/재발급 불가,
조조/심야/문화의날/어린이/우대/이벤트가 제외하며 타 쿠폰/포인트 등 할인이나 중복 적용 불가,
3D/특별콘텐트/특별관/특별석(로얄석 및 커플석 등) 등 일부 극장 사용 불가,
극장별, 배급사 요청에 따라 2D영화여도 사용 불가 경우 있음,
온라인 예매 전용으로 현장에서 사용 불가,
홈페이지 내 이벤트 페이지 세부 확인 및 고객센터 1:1 문의 가능,
비매품으로 타인에게 판매 및 현금 환불 불가,
사용 방법: 최종 결제 단계에서 선택', '2021-07-31');
 
 
insert into tblCoupon(couponSeq, couponType, couponName, couponContent, couponExpireDate) 
values (Seqcoupon.nextVal, '매표', '(하반기)VIP영화티켓', '유의사항 : 유효기간 내 1회 사용 가능 (예매 취소시 유효기간이 지난 쿠폰은 재사용 불가)
유효기간 만료 및 쿠폰 분실/훼손/등록 후 폐기로 인한 번호 확인/환불/재발급 불가,
조조/심야/문화의날/어린이/우대/이벤트가 제외하며 타 쿠폰/포인트 등 할인이나 중복 적용 불가,
3D/특별콘텐트/특별관/특별석(로얄석 및 커플석 등) 등 일부 극장 사용 불가,
극장별, 배급사 요청에 따라 2D영화여도 사용 불가 경우 있음,
온라인 예매 전용으로 현장에서 사용 불가,
홈페이지 내 이벤트 페이지 세부 확인 및 고객센터 1:1 문의 가능,
비매품으로 타인에게 판매 및 현금 환불 불가,
사용 방법: 최종 결제 단계에서 선택', '2021-12-31');


 
insert into tblCoupon(couponSeq, couponType, couponName, couponContent, couponExpireDate) 
values (Seqcoupon.nextVal, '매점', '오리지널 팝콘 무료티켓', '유의사항 : 유효기간 내 1회 사용 가능 (구매 취소시 유효기간이 지난 쿠폰은 재사용 불가),
유효기간 만료 및 쿠폰 분실/훼손/등록 후 폐기로 인한 번호 확인/환불/재발급 불가, 현장사용불가하며 온라인 구매시 사용가능,
홈페이지 내 이벤트 페이지 세부 확인 및 고객센터 1:1 문의 가능,
비매품으로 타인에게 판매 및 현금 환불 불가,
사용 방법: 최종 결제 단계에서 쿠폰 선택 ', '2021-08-31');


 
insert into tblCoupon(couponSeq, couponType, couponName, couponContent, couponExpireDate) 
values (Seqcoupon.nextVal, '매점', '탄산 무료티켓', '유의사항 : 유효기간 내 1회 사용 가능 (구매 취소시 유효기간이 지난 쿠폰은 재사용 불가),
유효기간 만료 및 쿠폰 분실/훼손/등록 후 폐기로 인한 번호 확인/환불/재발급 불가, 현장사용불가하며 온라인 구매시 사용가능,
홈페이지 내 이벤트 페이지 세부 확인 및 고객센터 1:1 문의 가능,
비매품으로 타인에게 판매 및 현금 환불 불가,
사용 방법: 최종 결제 단계에서 쿠폰 선택', '2021-08-31');
 

--커밋
commit;


--테이블확인
select * from tblCoupon;

