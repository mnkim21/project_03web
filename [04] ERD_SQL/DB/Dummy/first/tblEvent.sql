drop table tblEvent;
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

create sequence seqEvent;



insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'극장 룰렛 이벤트','/web_team6/asset/images/event_roulette.jpg','event_roulette.jpg','스페셜','2021-07-03','2021-07-21','2021-07-26');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'영화 코스프레 이벤트','/web_team6/asset/images/event_cosplay.jpg','event_cosplay.jpg','스페셜','2021-07-19','2021-07-23','2021-07-25');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'극장 퀴즈 마스터 이벤트','/web_team6/asset/images/event_quiz.jpg','event_quiz.jpg','스페셜','2021-07-08','2021-07-15','2021-07-15');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'필름모아 SNS에 좋아요 이벤트','/web_team6/asset/images/event_sns.jpg','event_sns.jpg','스페셜','2021-07-05','2021-07-17','2021-08-07');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'필름모아 노래를 이벤트','/web_team6/asset/images/event_sing.jpg','event_sing.jpg','스페셜','2021-07-10','2021-07-25','2021-08-25');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'인증샷 이벤트','/web_team6/asset/images/event_photo.jpg','event_photo.jpg','스페셜','2021-07-17','2021-07-19','2021-08-19');

insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'극장 한복 이벤트','/web_team6/asset/images/event_hanbok.jpg','event_hanbok.jpg','감동','2021-07-19','2021-07-23','2021-07-23');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'영화 감상문 이벤트','/web_team6/asset/images/event_gamsang.jpg','event_gamsang.jpg','감동','2021-07-18','2021-07-27','2021-08-27');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'영화 댄스타임 이벤트','/web_team6/asset/images/event_dance.jpg','event_dance.jpg','감동','2021-07-20','2021-07-24','2021-07-26');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'코메디 영화 웃참 이벤트','/web_team6/asset/images/event_laugh.jpg','event_laugh.jpg','감동','2021-07-20','2021-07-28','2021-07-28');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'쏠로 영화 데이','/web_team6/asset/images/event_solo.jpg','event_solo.jpg','감동','2021-07-24','2021-07-26','2021-07-26');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'로맨틱 영화 커플 이벤트','/web_team6/asset/images/event_couple.jpg','event_couple.jpg','감동','2021-07-25','2021-07-29','2021-07-29');

insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'여름 공포 영화 릴레이','/web_team6/asset/images/event_horror.jpg','event_horror.jpg','썸머','2021-07-05','2021-07-16','2021-07-17');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'시원한 영화 감상','/web_team6/asset/images/event_fashion.jpg','event_fashion.jpg','썸머','2021-07-09','2021-07-17','2021-07-20');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'심야 영화 이벤트','/web_team6/asset/images/event_night.jpg','event_night.jpg','썸머','2021-07-15','2021-07-18','2021-07-25');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'아이스크림 먹으며 영화','/web_team6/asset/images/event_icecream.jpg','event_icecream.jpg','썸머','2021-07-22','2021-07-24','2021-07-29');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'냉수 족욕 이벤트','/web_team6/asset/images/event_icefoot.jpg','event_icefoot.jpg','썸머','2021-07-23','2021-07-25','2021-07-28');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'에어컨 빵빵 이벤트','/web_team6/asset/images/event_airconditioner.jpg','event_airconditioner.jpg','썸머','2021-07-24','2021-07-26','2021-07-26');

insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'해리포터 시사회','/web_team6/asset/images/event_harrypotter.jpg','event_harrypotter.jpg','시사회','2021-07-15','2021-07-18','2021-07-18');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'반지의 제왕 시사회','/web_team6/asset/images/event_lordring.jpg','event_lordring.jpg','시사회','2021-07-28','2021-07-30','2021-07-30');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'동막골 시사회','/web_team6/asset/images/event_dongmak.jpg','event_dongmak.jpg','시사회','2021-07-21','2021-07-24','2021-07-24');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'알라딘 시사회','/web_team6/asset/images/event_aladin.jpg','event_aladin.jpg','시사회','2021-07-25','2021-07-29','2021-07-29');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'해운대 시사회','/web_team6/asset/images/event_haundae.jpg','event_haundae.jpg','시사회','2021-07-22','2021-07-22','2021-07-22');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'레미제라블 시사회','/web_team6/asset/images/event_lesmiserables.jpg','event_lesmiserables.jpg','시사회','2021-07-26','2021-07-27','2021-07-27');