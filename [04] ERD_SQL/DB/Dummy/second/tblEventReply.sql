drop table tblEventReply;
create table tblEventReply (
    eventReplySeq number primary key,
    eventSeq number not null references tblEvent(eventSeq),
    userSeq number not null references tblUser(userSeq),
    eventComment varchar2(500) not null,
    eventCommentRegdate date not null
);

create sequence seqEventReply;




insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,1,67,'이벤트 재밌겠다. 친구랑 꼭 이벤트 참여해야지~','2021-07-15');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,1,86,'기대되는 이벤트네요~ 필름모아 완전 좋아~','2021-07-22');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,1,22,'대박~ 애인이랑 같이 와야겠다.','2021-07-28');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,3,53,'의미있는 이벤트네요. 이벤트 고고~','2021-07-25');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,3,19,'신선하다. 완전 취향 저격!!!','2021-07-26');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,3,78,'이벤트 재밌겠다. 친구랑 꼭 이벤트 참여해야지~','2021-07-27');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,3,78,'대박~ 필름모아 완전 좋아~','2021-07-27');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,4,62,'의미있는 이벤트네요. 필름모아 완전 좋아~','2021-07-20');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,5,11,'대박~ 애인이랑 같이 와야겠다.','2021-07-15');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,5,2,'신선하다. 필름모아 완전 좋아~','2021-07-22');

insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,7,5,'이벤트 재밌겠다. 이벤트 고고~','2021-07-22');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,7,1,'기대되는 이벤트네요~ 완전 취향 저격!!!','2021-07-25');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,8,69,'대박~ 필름모아 완전 좋아~','2021-07-28');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,8,48,'의미있는 이벤트네요. 애인이랑 같이 와야겠다.','2021-07-31');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,9,72,'기대되는 이벤트네요~ 완전 취향 저격!!!','2021-07-24');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,10,81,'신선하다. 친구랑 꼭 이벤트 참여해야지~','2021-07-28');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,10,57,'기대되는 이벤트네요~ 필름모아 완전 좋아~','2021-07-31');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,10,42,'기대되는 이벤트네요~ 친구랑 꼭 이벤트 참여해야지~','2021-07-29');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,11,55,'대박~ 필름모아 완전 좋아~','2021-07-27');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,12,72,'이벤트 재밌겠다. 완전 취향 저격!!!','2021-07-26');

insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,13,12,'신선하다. 친구랑 꼭 이벤트 참여해야지~','2021-07-19');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,13,5,'기대되는 이벤트네요~ 완전 취향 저격!!!','2021-07-25');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,14,9,'대박~ 애인이랑 같이 와야겠다.','2021-07-27');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,15,37,'대박~ 필름모아 완전 좋아~','2021-07-16');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,15,50,'기대되는 이벤트네요~ 이벤트 고고~','2021-07-18');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,15,71,'신선하다. 완전 취향 저격!!!','2021-07-20');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,16,18,'기대되는 이벤트네요~ 친구랑 꼭 이벤트 참여해야지~','2021-07-29');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,17,61,'이벤트 재밌겠다. 필름모아 완전 좋아~','2021-07-29');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,18,74,'대박~ 완전 취향 저격!!!','2021-07-26');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,18,59,'의미있는 이벤트네요. 애인이랑 같이 와야겠다.','2021-07-30');

insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,19,55,'이벤트 재밌겠다. 필름모아 완전 좋아~','2021-07-17');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,20,87,'기대되는 이벤트네요~ 애인이랑 같이 와야겠다.','2021-07-30');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,21,9,'대박~ 이벤트 고고~','2021-07-28');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,21,74,'이벤트 재밌겠다. 완전 취향 저격!!!','2021-07-25');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,22,77,'기대되는 이벤트네요~ 친구랑 꼭 이벤트 참여해야지~','2021-07-30');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,22,53,'의미있는 이벤트네요. 필름모아 완전 좋아~','2021-07-31');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,23,60,'대박~ 친구랑 꼭 이벤트 참여해야지~','2021-07-25');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,24,93,'신선하다. 애인이랑 같이 와야겠다.','2021-07-28');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,24,62,'대박~ 완전 취향 저격!!!','2021-07-26');
insert into tblEventReply (eventReplySeq,eventSeq,userSeq,eventComment,eventCommentRegdate) values(seqEventReply.nextVal,24,11,'기대되는 이벤트네요~ 필름모아 완전 좋아~','2021-07-28');


select * from tblEventReply;