-- DDL - drop
-- 19. 회원 좌석 테이블
drop table tblUserSeat;
-- 19. 회원 좌석 시퀀스
drop sequence seqUserSeat;



-- 18. 쿠폰 사용상태 테이블
drop  table tblCouponStatus;
-- 18. 쿠폰 사용상태 시퀀스
drop sequence Seqcouponstatus;



-- 17. 쿠폰보유 테이블
drop table tblCouponHave;
-- 17. 쿠폰보유 시퀀스
drop sequence SeqcouponHave;

-- 16. 예매 테이블
drop  table tblTicketing;
-- 16. 예매 시퀀스
drop sequence Seqticketing;
-- 15. 영화댓글 테이블
drop  table tblMovieComment;
-- 15. 영화댓글 시퀀스
drop sequence SeqmovieComment;



-- 14. 영화스케쥴 테이블
drop table tblSchedule;
-- 14. 영화스케쥴 시퀀스
drop sequence Seqschedule;


-- 13. 매점 구매내역 테이블
drop table tblStoreHistory;
-- 13. 매점 구매내역 시퀀스
drop sequence SeqstoreHistory;

-- 12. 이벤트 댓글 테이블
drop table tblEventReply;
-- 12. 이벤트 댓글 시퀀스
drop sequence SeqEventReply;



-- 11. 매점 테이블
drop table tblStore;
-- 11. 매점 시퀀스
drop  sequence SeqStore;

-- 10. 분실물 문의 테이블
drop table tblLost ;
-- 10. 분실물 문의 시퀀스
drop sequence SeqLost;



-- 9. 1:1문의 테이블
drop table tblPersonal;
-- 9. 1:1문의 시퀀스
drop sequence seqPersonal;



-- 8. 대관문의 테이블
drop table tblRent;
-- 8. 대관문의 시퀀스
drop sequence Seqrent;







-- 7. 공지사항 테이블
drop  table tblNotice;
-- 7. 공지사항 시퀀스
drop sequence Seqnotice;

-- 6. 자주 묻는 질문 테이블
drop table tblQuestion;
-- 6. 자주 묻는 질문 시퀀스
drop sequence Seqquestion;

-- 5. 극장 테이블
drop table tblTheater;
-- 5. 극장 시퀀스
drop sequence Seqtheater;

-- 4. 영화 테이블
drop  table tblMovie;
-- 4. 영화 시퀀스
drop sequence Seqmovie;

-- 3. 이벤트&혜택 테이블
drop table tblEvent ;
-- 3. 이벤트&혜택 시퀀스
drop sequence Seqevent;

-- 2. 쿠폰 테이블
drop table tblCoupon;
-- 2. 쿠폰 시퀀스
drop  sequence Seqcoupon;

--1. 회원 테이블
drop table tblUser;
--1. 회원번호 시퀀스
drop sequence Sequser;



--커밋
commit;

select * from tab;

