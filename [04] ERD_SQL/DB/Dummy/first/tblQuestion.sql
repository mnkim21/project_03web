create table tblQuestion(

questionseq number primary key,		-- 게시글번호
questionType varchar2(50) not null,		-- 글분류
questionTitle varchar2(200) not null,		-- 글제목
questionContent varchar2(2000) not null	-- 글내용

);


create sequence seqQuestion;


drop table tblQuestion;


insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'분실물문의','분실물이 있는데 어떻게 찾을 수 있을까요?','분실물 문의를 통해 관람하신 지점과 상세 내용을 기재하여 접수하여주시면 지점에서 확인 후 순차 답변을 드립니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'상영관 좌석관련 문의','모든 상영관의 좌석 개수는 모두 동일한가요?','상영관 좌석의 개수는 상영관마다 다릅니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'외부음식반영문의','영화관에서 판매한 음식이 아닌 다른 외부음식의 반입이 가능한가요?','다른 외부 음식 반입은 가능하나 권장하고 있지 않습니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'극장','극장에 주차장은 어디에 위치하나요?','주차장은 영화관 B3~1층에 에 위치하고 있습니다.');

insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'영화예매','영화예매를 하면 포인트 충전이 되나요?','영화예매시 포인트가 부여됩니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'영화예매','비회원의 경우는 어떻게 티켓예매를 할 수 있나요?','영화관을 직접 방문하여 티켓구매가 가능하며 인터넷에서도 구매가 가능합니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'영화예매','영화예매는 몇시부터 몇시까지 예매가 가능하나요?','영화예매는 24시간 가능합니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'영화예매','인터넷으로 영화티켓 구매시 수수료는 얼마인가요?','인터넷으로 영화구매시 별도의 수수료는 발생하지 않습니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'영화예매','인터넷으로 영화티켓 예매를 했는데 취소하고 싶습니다. 취소시 환불 수수료가 있나요?','영화취소 시 별도의 환불 수수료는 발생하지 않습니다. 다만, 영화상영 1시간 전에는 환불이 불가능합니다.');

insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'VIP','VIP 선정 기준은 어떻게 되나요?','VIP선정 기준은 영화예매 횟수에 따라 등급이 부여됩니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'VIP','VIP가 되면 어떤 혜택을 받을 수 있나요?','영화할인혜택이 주어집니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'VIP','VIP 등급을 받으면 얼마동안 VIP를 할 수 있나요?','VIP기간은 1년이며 매년 등급이 초기화됩니다.');


insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'스토어','영화관 내 스토어의 위치는 어디인가요?','영화관 2층에 위치하고 있습니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'스토어','쿠폰으로 스토어 상품을 살 수 있나요?','네 구매 가능합니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'스토어','스토어 구매상품은 환불이 가능한가요?','최초 유효기간 만료 후에는 결제금액의 90%에 대해 환불 요청 가능하며, 환불요청시 7일이상 시간이 소요될 수 있습니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'스토어','스토어 상품을 선물 받았는데 어떻게 사용하나요?','스토어에 방문하신 후 바코드 결제를 하시면 됩니다');

insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'마이페이지','개명을 했는데 개인정보를 어떻게 변경하나요?','마이페이지에서 개인정보변경이 가능합니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'마이페이지','비밀번호를 잊어버렸는데 재변경이 가능할까요?','마이페이지에서 비밀번호 변경이 가능합니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'마이페이지','아이디를 바꾸고 싶은데 변경이 가능한가요?','아이디 변경은 불가능합니다.');
insert into tblQuestion (questionseq,questionType,questionTitle,questionContent) values(seqQuestion.nextVal,'마이페이지','로그인을 했는데 휴면계정이라고 뜹니다. 어떻게 복구할 수 있을까요?','마이페이지에서 휴면계정 복구가 가능합니다.');


			