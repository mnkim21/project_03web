create or replace view vwTicketing
as
select  t.ticketingseq as ticketingSeq,
        u.userseq as userSeq,
        s.scheduleSeq as scheduleSeq,
        u.userid as userId,
        t.ticketingdate as ticketingDate,
        th.theatername as theaterName,
        s.theaterroomname as theaterRoomName,
        to_char(s.scheduledate,'yyyy-mm-dd')||'('||to_char(s.scheduledate,'dy')||')' as scheduleDate,
        to_char(s.scheduletime,'hh24:mi:ss') as scheduleTime,
        m.movietime as movietime,
        m.movieposter as moviePoster,
        m.moviekorname as movieKorname,
        m.movieformat as movieFormat,
        rownum as rNum
        from tblUser u
    inner join tblticketing t
        on u.userseq = t.userseq
            inner join tblschedule s
                on t.scheduleseq = s.scheduleseq
                    inner join tblMovie m 
                        on s.movieseq = m.movieseq 
                            inner join tbltheater th 
                                on s.theaterseq = th.theaterseq 
    order by s.scheduletime desc;

select * from vwTicketing;
select * from vwQuestion;

create or replace view vwQuestion
as
select q.*,rownum as rnum from tblQuestion q order by q.questionseq desc;




create or replace view vwNotice
as
select n.*,rownum as rnum from (select * from tblNotice order by noticeseq desc) n;

create or replace view vwMovie
as
select m.*,rownum as rnum from (select *from tblMovie order by movieOpen desc) m;



create or replace view vwStoreHistory
as
select 
    sh.storehistoryseq as storeHistorySeq,
    sh.userSeq as userSeq,
    u.userId as userId,
    sh.itemSeq as itemSeq,
    sh.storeHistoryRegdate as storeHistoryRegdate,
    sh.storeHistoryCount as storeHistoryCount,
    sh.storeCheck as storeCheck,
    s.itemName as itemName,
    s.itemPrice as itemPrice,
    s.itemImage as itemImage
from tblStoreHistory sh 
    inner join tblUser u
        on sh.userseq = u.userseq
            inner join tblStore s
                on sh.itemseq = s.itemseq;
                

                select * from tblMovie;
create or replace view vwTicketingSchedule
as
select
    s.scheduleSeq as scheduleSeq,
    s.scheduleDate as scheduleDate,
    s.scheduleTime as scheduletime,
    s.theaterSeq as theaterSeq,
    s.movieSeq as movieseq,
    s.theaterRoomName as theaterRoomName,
    s.seatCount as seatCount,
    m.movieKorName as movieKorName,
    m.movieGenre as movieGenre,
    m.moviePoster as moviePoster,
    t.theaterName as theaterName,
    t.theaterArea as theaterArea,
    m.movieTime as movieTime
from tblSchedule s
    inner join tblMovie m
        on s.movieSeq = m.movieSeq
            inner join tblTheater t
                on s.theaterSeq = t.theaterSeq;
commit;
select * from vwTicketingSchedule where scheduletime like '%08:45%';
select to_char(scheduleTime,'hh24:mi:ss') from vwTicketingSchedule where to_char(scheduleTime,'hh24:mi:ss') like '%08:45%';