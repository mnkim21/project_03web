-- tblRent
drop table tblRent;
drop sequence seqRent;

-- 테이블 생성
-- foreign key(userSeq) references tblUser(userSeq)

create table tblRent(
    rentSeq number primary key,                     -- 게시글번호(PK)
    userSeq not null references tblUser(userSeq),   -- 회원번호(FK)
    theaterName varchar2(30) not null,              -- 극장 이름
    rentDate date not null,                         -- 대관희망일
    movieName varchar2(50) not null,                -- 영화이름
    rentPeople number not null,                     -- 관람인원
    rentTitle varchar2(100) not null,               -- 글제목 
    rentContent varchar2(2000) not null,            -- 글 내용
    rentRegdate date default sysdate not null,      --  등록일
    rentCommentCheck varchar2(1) default 'n' constraint tblRent_comment_ck check(rentCommentCheck in('y', 'n'))     -- 답변처리여부(y,n)
);

create sequence seqRent;

-- 데이터 입력
insert into tblRent values (seqRent.nextVal, 50, '여수웅천', '2021-02-13', '모가디슈', 54, '단체관람', '저 날짜에 가능할까요?', '2021-01-10', 'y');
insert into tblRent values (seqRent.nextVal, 48, '경산하양', '2021-10-18', '쥬라기 월드(2015)', 30, '단체관람 가능할까요??', '단체관람 문의드립니다.', '2021-05-15', 'n');
insert into tblRent values (seqRent.nextVal, 39, '경북도청', '2021-01-02', '발신제한', 18, '단체관람', '대관문의 드립니다.', '2020-12-17', 'n');
insert into tblRent values (seqRent.nextVal, 36, '삼천포', '2021-06-21', '모가디슈', 37, '단체관람 가능할까요??', '금액은 얼마나 될까요?', '2021-05-18', 'n');
insert into tblRent values (seqRent.nextVal, 90, '원주센트럴', '2021-07-08', '배드 지니어스(2017)', 33, '단체관람 예매 문의요~', '단체관람하고 싶어요.', '2021-06-05', 'n');
insert into tblRent values (seqRent.nextVal, 82, '용인기흥', '2021-07-22', '라라랜드(2016)', 20, '문의드립니다.', '단체관람하고 싶어요.', '2021-06-19', 'n');
insert into tblRent values (seqRent.nextVal, 32, '수원', '2021-02-14', '인터스텔라(2014)', 43, '단체관람 예매 문의요~', '단체관람 문의드립니다.', '2021-01-11', 'n');
insert into tblRent values (seqRent.nextVal, 16, '청주사창', '2021-05-26', '콰이어트 플레이스 2', 26, '대관문의합니다.', '단체관람하고 싶어요.', '2021-04-23', 'y');
insert into tblRent values (seqRent.nextVal, 31, '남포항', '2021-03-01', '콰이어트 플레이스 2', 18, '단체관람', '단체관람 문의드립니다.', '2021-02-02', 'y');
insert into tblRent values (seqRent.nextVal, 59, '검단', '2021-04-11', '블랙 위도우', 18, '대관문의합니다.', '단체관람시 할인있나요?', '2021-03-08', 'y');
insert into tblRent values (seqRent.nextVal, 3, '양산', '2021-04-03', '라라랜드(2016)', 41, '대관', '단체관람시 할인있나요?', '2021-03-01', 'n');
insert into tblRent values (seqRent.nextVal, 9, '강동', '2021-05-18', '발신제한', 56, '단체관람', '저 날짜에 가능할까요?', '2021-04-15', 'n');
insert into tblRent values (seqRent.nextVal, 54, '영통', '2021-05-06', '콰이어트 플레이스 2', 20, '문의드립니다.', '3~4시간 정도 대관하고 싶은데 가능한가요?', '2021-04-03', 'y');
insert into tblRent values (seqRent.nextVal, 71, '덕천', '2021-04-29', '배드 지니어스(2017)', 57, '단체관람하고싶어요.', '3~4시간 정도 대관하고 싶은데 가능한가요?', '2021-03-26', 'y');
insert into tblRent values (seqRent.nextVal, 70, '고양스타필드', '2021-11-27', '소울', 32, '문의드립니다.', '금액은 얼마나 될까요?', '2021-07-24', 'n');

commit;

select * from tblRent;