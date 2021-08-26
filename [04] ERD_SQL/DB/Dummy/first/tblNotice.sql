-- tblNotice
drop table tblNotice;
drop sequence seqNotice;

-- 데이블 생성
create table tblNotice(
    noticeSeq number primary key,               -- 게시글 번호
    noticeTime varchar2(100) not null,          -- 글제목
    noticeContent varchar2(2000) not null,      -- 글내용
    noticeDate date default sysdate not null    -- 등록일
);
create sequence seqNotice;

-- 데이터 입력
insert into tblNotice values (seqNotice.nextVal, ' 코엑스지점 건물 방역 작업으로 운영시간 조정 안내(3/1)', '코로나 19 예방과 고객님의 안전을 위하여 스타필드 코엑스 전체 방역을 실시함에 따라 운영시간을 조정하오니, 고객님의 영화관 이용에 참고 바랍니다. - 방역일 및 운영시간 : 3월 1일(일), 08:30 ~ 24:00 (24시전 모든 상영관의 영화 종료) 질병관리본부의 예방 대책안에 따라 고객님의 안전한 관람환경 조성에 최선을 다하겠습니다.', '2020-02-27');
insert into tblNotice values (seqNotice.nextVal, '<오케이 마담>, <다만 악에서 구하소서> 무대인사 취소 안내', '8월 16일(일)과 17일(월) 진행 예정이었던 <오케이 마담>과 <다만 악에서 구하소서> 무대인사가 코로나19 확산으로 인한 사회적 거리두기 2단계 격상 정부 권고에 따른 배급사 요청으로 부득이하게 취소되었습니다.', '2020-08-15');
insert into tblNotice values (seqNotice.nextVal, '영업종료 안내', '고객 여러분들과 다양한 추억을 만들었던 ‘필름모아 청라지점’이 2020년 9월 13일자로 영업을 종료하게 되었습니다. (09월 13일까지 영화 상영)', '2020-09-07');
insert into tblNotice values (seqNotice.nextVal, '1월 29일 N스크린 빵원티켓 진행 오류 안내', '시스템 오류로 인해 2윌1일 오픈 예정이었던 빵원티켓이 금일 한시적으로 오픈 되었습니다. 고객님들께 혼란을 드려 죄송합니다. 너그러운 이해 부탁드립니다.', '2021-01-29');
insert into tblNotice values (seqNotice.nextVal, '[이벤트 안내] 신규 가입 이벤트 진행 사항 변경 안내', '1월 27일 부터 진행 중인 신규 가입 회원 이벤트 변경 사항 안내드립니다. - 경품 지급 대상이 "신규 가입 회원"에서 "신규 가입 회원 및 휴면 복귀 회원"으로 확대 되었습니다.', '2021-02-08');
insert into tblNotice values (seqNotice.nextVal, '필름모아 개인정보 처리 방침 변경 안내', '필름모아 개인정보 처리방침 내용이 변경됨에 따라 다음과 같이 안내 드립니다. 변경된 내용은 2021년 3월 26일(금)부터 시행 예정이니 이용에 참고하여 주시기 바랍니다.', '2021-03-19');
insert into tblNotice values (seqNotice.nextVal, '21년 4월 휴관일 안내', '안녕하세요.필름모아 문경지점입니다.홈플러스 문경점 휴무일에 따른 영화관 휴관 일정을 아래와 같이 안내드리오니 지점 이용에 참고 부탁드립니다.※ 4월 휴관일 : 4/14, 4/28 (수요일) 항상 필름모아 문경지점을 이용해주셔서 감사합니다.', '2021-04-05');
insert into tblNotice values (seqNotice.nextVal, '무료 주차 안내', '안녕하세요.파주출판도시지점입니다.극장 방문시 무료 주차 관련하여 안내 드립니다. 이채쇼핑몰 사거리 CU편의점 뒤 A동 주차타워(은하관) 1층 주차 차단기 통과 후, 주차타워 4층 옥상 주차 차단기 통과하여 극장 건물(별관) 입차시 무료', '2021-04-26');
insert into tblNotice values (seqNotice.nextVal, '임시 휴업 안내', '코로나19로 인한 사회적 거리두기의 일환으로 잠정적 임시 휴업을 결정하였습니다. 그동안 필름모아 제주점을 이용해 주신 분들께 깊은 감사를 드리며, 조속히 정상화될 수 있도록 노력하겠습니다.', '2021-05-06');
insert into tblNotice values (seqNotice.nextVal, 'VIP 회원시사회 안내', '[파이프라인] VIP회원시사회 안내 드립니다. •영화명 : 파이프라인 •관람등급 : 만 15세 이상 관람가 •일시 : 2021년 05월 24일 (월) 19:30 •장소 : 필름모아 분당지점 5관', '2021-05-20');
insert into tblNotice values (seqNotice.nextVal, '영화 관람요금 변경 안내', '영화 관람 가격이 변경되오니, 이용에 참고 부탁드립니다.', '2021-06-11');
insert into tblNotice values (seqNotice.nextVal, '2021년 7월 시스템 정기 점검 안내', '언제나 필름모아를 이용해주시는 고객님께 감사드립니다. 저희 필름모아에서는 보다 원활한 서비스 제공을 위하여 시스템 점검을 실시할 예정입니다. 점검 시간 중 필름모아 모든 온라인 서비스 제공이 중단될 예정이오니 이용에 불편 없으시기 바랍니다.감사합니다.', '2021-07-08');
insert into tblNotice values (seqNotice.nextVal, '관람권 및 무료쿠폰 유효기간 연장 안내', '안녕하세요,필름모아 입니다. 수도권 사회적 거리두기 4단계 격상으로 인하여 관람권 및 무료 쿠폰 유효 기간 연장 안내 드립니다. 감사합니다.', '2021-07-21');

commit;

select * from tblNotice;