

-- DDL - create

--================ [ 1단계 ] =============================

-- 1. 회원테이블
create table tblUser (

 userSeq number primary key,             -- 회원번호(PK)
 userName varchar2(20) not null,          -- 회원이름
 userTel varchar2(15) unique not null,             -- 전화번호
 userId varchar2(50) unique not null,              -- 회원 아이디
 userPw varchar2(50) not null,             -- 비밀번호
 userGender varchar2(1) not null,           -- 성별
 userBirth date not null ,                  -- 생년월일
 userEmail varchar2(50) not null,          -- 이메일
 userGrade number default 1 not null,      -- 등급
 userPoint number default 0 not null,      -- 포인트
 userGenre varchar2(50) , 	               -- 선호장르
 userTheater varchar2(50), 	              -- 선호극장
 userQuestion number not null,            -- 질문
 userAnswer varchar2(300) not null,       -- 답변
 userImage varchar2(100) default '/images/profile.png' not null,     -- 프로필사진
 userLv number default 1 not null,         -- 레벨
 userRegdate date default sysdate not null  --가입일

);

-- 1. 회원 시퀀스
create sequence Sequser;

--=====================================================
-- 2. 쿠폰테이블
create table tblCoupon (
    
    couponSeq number primary key,            -- 쿠폰 번호, PK
    couponType varchar2(50) not null,          -- 쿠폰 분류
    couponName varchar2(50) not null,         -- 쿠폰 이름
    couponContent varchar2(2000) not null,    -- 쿠폰 내용
    couponExpireDate date not null             -- 쿠폰 유효 기간

);

-- 2. 쿠폰 시퀀스
create sequence Seqcoupon;

--=====================================================
-- 3. 이벤트&혜택 테이블
create table tblEvent (
    eventSeq number primary key,
    eventTitle varchar2(100) not null,   
    eventThumbnail varchar2(100) not null,
    eventPoster varchar2(100) not null,
    eventType varchar2(50) not null,
    eventRegdate date default sysdate not null,
    eventStartdate date not null,
    eventEnddate date not null
);

-- 3. 이벤트&혜택 시퀀스
create sequence Seqevent;
--=====================================================

-- 4. 영화 테이블
create table tblMovie(
    
    movieSeq number primary key,                            -- 영화번호(PK)
    movieKorName varchar2(100) not null,              -- 영화이름(한글)
    movieEngName varchar2(100) not null,              -- 영화이름(영문)
    movieGenre varchar2(100) not null,                   -- 장르
    movieOpen date not null,                                     -- 개봉일
    movieDirector varchar2(50) not null,              -- 감독
    movieActor varchar2(200)   not null,              -- 주연배우
    movieTime number not null,                                -- 러닝타임
    movieCountry varchar2(50) not null,              -- 국가
    movieCompany varchar2(50) not null,             --배급사
    movieFormat varchar2(30)  default '2D',       -- 영화상영포맷
    movieAge number not null,                                 -- 상영등급
    moviePoster varchar2(100) ,                           -- 포스터
    movieStory varchar2(2000)  not null            -- 영화 줄거리 


);

-- 4. 영화 시퀀스
create sequence Seqmovie;

--=====================================================

-- 5. 극장 테이블
create table tblTheater(
    theaterSeq number primary key,
    theaterName varchar2(50) not null,
    theaterArea varchar2(50) not null,
    theaterAddress varchar2(300) not null,
    theaterInfo varchar2(1000),
    theaterTitle varchar2(500),
    lat number not null,
    lng number not null
);

-- 5. 극장 시퀀스
create sequence Seqtheater;

--=====================================================
-- 6. 자주 묻는 질문 테이블
create table tblQuestion(

questionseq number primary key,		-- 게시글번호
questionType varchar2(50) not null,		-- 글분류
questionTitle varchar2(200) not null,		-- 글제목
questionContent varchar2(2000) not null	-- 글내용

);

-- 6. 자주 묻는 질문 시퀀스
create sequence Seqquestion;

--=======================================================

-- 7. 공지사항 테이블
create table tblNotice(
    noticeSeq number primary key,               -- 게시글 번호
    noticeTime varchar2(100) not null,          -- 글제목
    noticeContent varchar2(2000) not null,      -- 글내용
    noticeDate date default sysdate not null    -- 등록일
);


-- 7. 공지사항 시퀀스
create sequence Seqnotice;

--================== [2단계] ===================================


-- 8. 대관문의 테이블
create table tblRent(

 postSeq number primary key,                      				-- 게시글번호(PK)
 userSeq number not null references tblUser (userSeq),    		-- 회원번호(FK)
 theaterName VARCHAR2(30) not null,  				-- 극장이름
rentDate date not null,	                             			-- 대관희망일
movieName VARCHAR2(50) not null,                  			-- 영화이름
rentPeople number not null,		                     			-- 관람인원
rentTitle VARCHAR2(100) not null,	                 			-- 글제목
rentContent VARCHAR2(2000) not null,             			-- 글내용	
rentRegdate DATE not null,		                     			-- 등록일
rentCommentCheck VARCHAR2(1) default 'N'        			-- 답변처리여부
);



-- 8.  대관문의 시퀀스
create sequence Seqrent;
--=====================================================

-- 9. 1:1 문의 테이블
create table tblPersonal(

 personalSeq number primary key,                  		-- 게시글 번호(PK)
 userSeq number not null references tblUser(userSeq),   		 -- 회원번호(FK)
 theaterName varchar2(50) not null,             			 -- 극장이름
 personalType VARCHAR2(30)  not null, 	        		 -- 문의유형
 personalTitle  VARCHAR2(100) not null,            		-- 글제목
 personalContent VARCHAR2(2000) not null,       		 -- 글 내용
 personalPicture VARCHAR2(100),           			-- 사진첨부이름
 personalRegdate date default sysdate not null,                    	-- 등록일
 personalCommentCheck varchar2(1) default 'N' not null   	-- 답변처리여부
);

-- 9. 1:1문의 시퀀스
create sequence seqPersonal;
--=====================================================

-- 10. 분실물 문의 테이블
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

-- 10. 분실물 문의 시퀀스
create sequence SeqLost;
--=====================================================


-- 11. 매점 테이블

create table tblStore(
    
    itemSeq number primary key,                -- 제품번호(PK)
    itemName varchar2(50) not null,             -- 제품명
    itemPrice number not null,                    -- 가격
    itemCount number not null,                   -- 제품 수량
    itemClass varchar2(30) not null,              -- 제품 분류(팝콘/음료/티켓/세트)
    itemImage varchar2(100) not null              -- 제품 이미지
   

);

-- 11. 매점 시퀀스
create sequence SeqStore;

--================ [ 3단계 ] =============================



-- 12. 이벤트 댓글 테이블
create table tblEventReply (
    eventReplySeq number primary key,
    eventSeq number not null references tblEvent(eventSeq),
    userSeq number not null references tblUser(userSeq),
    eventComment varchar2(500) not null,
    eventCommentRegdate date not null
);

-- 12. 이벤트 댓글 시퀀스
create sequence SeqEventReply;
--=======================================================================

-- 13. 매점 구매내역 테이블
create table tblStoreHistory(

 storeHistorySeq number primary key ,                                -- 매점구매내역번호(PK)
 itemSeq number not null references tblStore (itemSeq),            -- 제품번호(FK)
 userSeq number not null references tblUser (userSeq), 	            -- 회원번호
 storeHistoryRegdate date not null,	                                -- 구매날짜
 storeHistoryCount number not null,	                                -- 구매수량
 storeCheck VARCHAR2(1) default 'N' 	                                 -- 제품사용여부
);

-- 13. 매점 구매내역 시퀀스
create sequence SeqstoreHistory;
--===================================================




-- 14. 영화스케쥴 테이블
create table tblSchedule(
    scheduleSeq number primary key,
    scheduleDate date not null,
    scheduleTime date not null,
    theaterRoomName varchar(10) not null,
    theaterSeq number not null references tblTheater(theaterSeq),
    movieSeq number not null references tblMovie(movieSeq),
    seatCount number default 150 not null
);


-- 14. 영화스케쥴 시퀀스(상영영화번호)
create sequence Seqschedule;
--===================================================

-- 15. 영화댓글 테이블
create table tblMovieComment(

 movieCommentSeq number primary key,                        -- 영화댓글번호(PK)
 userSeq number not null references tblUser (userSeq),      -- 회원번호(FK)
 movieSeq number not null references tblMovie(movieSeq),   -- 영화번호(FK)
 movieCommentRegdate date not null,                           -- 작성일
 movieCommentContent varchar2(500) not null,                -- 내용
 movieScore number not null                                     -- 평점

);

-- 15. 영화댓글 시퀀스
create sequence SeqmovieComment;
--===================================================

-- 16. 예매 테이블
create table tblTicketing (
    ticketingSeq number primary key,
    userSeq number not null references tblUser(userSeq),
    scheduleSeq number not null references tblSchedule(scheduleSeq),
    ticketingDate date default sysdate not null
);


-- 16. 예매 시퀀스
create sequence Seqticketing;




--===================================================


-- 17. 쿠폰보유 테이블
create table tblCouponHave (

couponHaveSeq number primary key ,                                 -- 쿠폰보유번호(PK) 
userSeq number not null references tblUser (userSeq),             -- 회원번호(FK)			
couponSeq number not null references tblCoupon (couponSeq)     -- 쿠폰번호(FK)
);


-- 17. 쿠폰보유 시퀀스
create sequence SeqcouponHave;
--===================================================

-- 18. 쿠폰 사용상태 테이블
create table tblCouponStatus(

 couponstatusSeq number primary key,                                -- 쿠폰상태번호(PK)
 couponUseDate date not null,                                          -- 쿠폰사용일
 couponHaveSeq number references tblCouponHave(couponHaveSeq)  -- 쿠폰보유번호(PK)

);

-- 18. 쿠폰 사용상태 시퀀스
create sequence seqCouponStatus;
--===================================================

-- 19. 회원 좌석 테이블
create table tblUserSeat (
    seatSeq number primary key,
    ticketingSeq number not null references tblTicketing(ticketingSeq),
    seatRow varchar2(3) not null,
    seatColumn number not null,
    seatValue varchar2(15) not null
);

-- 19. 회원 좌석 시퀀스
create sequence seqUserSeat;



--커밋

commit;


