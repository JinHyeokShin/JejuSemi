

-----------------삭제------------------
--접속유저의 모든테이블 및 제약조건 삭제
BEGIN
    FOR C IN (SELECT TABLE_NAME FROM USER_TABLES) LOOP
    EXECUTE IMMEDIATE ('DROP TABLE '||C.TABLE_NAME||' CASCADE CONSTRAINTS');
    END LOOP;
END;
/
--접속유저의 모든 시퀀스 삭제
BEGIN
FOR C IN (SELECT * FROM USER_SEQUENCES) LOOP
  EXECUTE IMMEDIATE 'DROP SEQUENCE '||C.SEQUENCE_NAME;
END LOOP;
END;
/
---------------------------------------
-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- nation Table Create SQL
CREATE TABLE nation
(
    nation_code    INT              NOT NULL, 
    nation_name    VARCHAR2(10)     NULL, 
    nation_img     VARCHAR2(300)    NULL, 
    CONSTRAINT NATION_PK PRIMARY KEY (nation_code)
)
/

COMMENT ON TABLE nation IS '국적코드'
/

COMMENT ON COLUMN nation.nation_code IS '국적번호'
/

COMMENT ON COLUMN nation.nation_name IS '국적코드'
/

COMMENT ON COLUMN nation.nation_img IS '국적이미지번호F'
/


-- nation Table Create SQL
CREATE TABLE member
(
    mem_num       INT             NOT NULL, 
    mem_id        VARCHAR2(50)    NOT NULL, 
    mem_pw        VARCHAR2(50)    NOT NULL, 
    mem_name      VARCHAR2(20)    NULL, 
    mem_gender    VARCHAR2(5)     NULL, 
    mem_phone     VARCHAR2(20)    NOT NULL, 
    nation_num    INT             NULL, 
    mem_point     INT             NULL, 
    mem_type      VARCHAR2(10)    NULL, 
    mem_status    VARCHAR2(10)    NULL, 
    mem_join      DATE            NOT NULL, 
    mem_out       DATE            NULL, 
    mem_noshow    int             NULL, 
    CONSTRAINT MEMBER_PK PRIMARY KEY (mem_num)
)
/

COMMENT ON TABLE member IS '멤버'
/

COMMENT ON COLUMN member.mem_num IS '회원번호p'
/

COMMENT ON COLUMN member.mem_id IS '회원이메일'
/

COMMENT ON COLUMN member.mem_pw IS '회원비밀번호'
/

COMMENT ON COLUMN member.mem_name IS '회원이름'
/

COMMENT ON COLUMN member.mem_gender IS '회원성별(MF)'
/

COMMENT ON COLUMN member.mem_phone IS '회원전화번호'
/

COMMENT ON COLUMN member.nation_num IS '국적번호f'
/

COMMENT ON COLUMN member.mem_point IS '회원 포인트'
/

COMMENT ON COLUMN member.mem_type IS '회원구분(AOU)'
/

COMMENT ON COLUMN member.mem_status IS '회원상태(Y/N)'
/

COMMENT ON COLUMN member.mem_join IS '회원가입일시'
/

COMMENT ON COLUMN member.mem_out IS '회원탈퇴일'
/

COMMENT ON COLUMN member.mem_noshow IS '노쇼누적'
/

ALTER TABLE member
    ADD CONSTRAINT FK_member_nation_num_nation_na FOREIGN KEY (nation_num)
        REFERENCES nation (nation_code)
/


-- nation Table Create SQL
CREATE TABLE lodge_img
(
    lodge_img_num     INT              NOT NULL, 
    lodge_img_path    VARCHAR2(300)    NULL, 
    CONSTRAINT LODGE_IMG_PK PRIMARY KEY (lodge_img_num)
)
/


-- nation Table Create SQL
CREATE TABLE lodge
(
    lodge_num         INT              NOT NULL, 
    lodge_name        VARCHAR2(100)    NULL, 
    lodge_owner       VARCHAR2(20)     NULL, 
    lodge_contact     VARCHAR2(20)     NULL, 
    lodge_address     VARCHAR2(50)     NULL, 
    lodge_type        VARCHAR2(10)     NULL, 
    lodge_descrip     CLOB             NULL, 
    lodge_coor_x      VARCHAR2(20)     NULL, 
    lodge_coor_y      VARCHAR2(20)     NULL, 
    lodge_district    VARCHAR2(50)     NULL, 
    lodge_power       VARCHAR2(10)     NULL, 
    lodge_img_num     INT              NULL, 
    CONSTRAINT LODGE_PK PRIMARY KEY (lodge_num)
)
/

COMMENT ON TABLE lodge IS '숙박업소'
/

COMMENT ON COLUMN lodge.lodge_num IS '숙소번호p'
/

COMMENT ON COLUMN lodge.lodge_name IS '숙소명'
/

COMMENT ON COLUMN lodge.lodge_owner IS '숙소오너'
/

COMMENT ON COLUMN lodge.lodge_contact IS '숙소연락처'
/

COMMENT ON COLUMN lodge.lodge_address IS '숙소주소'
/

COMMENT ON COLUMN lodge.lodge_type IS '숙소유형hrcgm'
/

COMMENT ON COLUMN lodge.lodge_descrip IS '숙소설명'
/

COMMENT ON COLUMN lodge.lodge_coor_x IS '숙소좌표_X'
/

COMMENT ON COLUMN lodge.lodge_coor_y IS '숙소좌표_Y'
/

COMMENT ON COLUMN lodge.lodge_district IS '숙소행정구역'
/

COMMENT ON COLUMN lodge.lodge_power IS '숙소파워(YN)'
/

COMMENT ON COLUMN lodge.lodge_img_num IS '숙소이미지번호f'
/

ALTER TABLE lodge
    ADD CONSTRAINT FK_lodge_lodge_img_num_lodge_i FOREIGN KEY (lodge_img_num)
        REFERENCES lodge_img (lodge_img_num)
/


-- nation Table Create SQL
CREATE TABLE room_img
(
    room_img_num     INT              NOT NULL, 
    room_img_path    VARCHAR2(300)    NULL, 
    CONSTRAINT ROOM_IMG_PK PRIMARY KEY (room_img_num)
)
/


-- nation Table Create SQL
CREATE TABLE room
(
    room_num        INT             NOT NULL, 
    lodge_num       INT             NULL, 
    room_name       VARCHAR2(100)    NULL, 
    room_price      INT             NULL, 
    room_pax        INT             NULL, 
    room_img_num    INT             NULL, 
    room_type       VARCHAR2(10)    NULL, 
    room_descrip    CLOB            NULL, 
    CONSTRAINT ROOM_PK PRIMARY KEY (room_num)
)
/

COMMENT ON TABLE room IS '숙소방'
/

COMMENT ON COLUMN room.room_num IS '룸넘버p'
/

COMMENT ON COLUMN room.lodge_num IS '숙소번호f'
/

COMMENT ON COLUMN room.room_name IS '룸이름'
/

COMMENT ON COLUMN room.room_price IS '룸가격'
/

COMMENT ON COLUMN room.room_pax IS '룸인원'
/

COMMENT ON COLUMN room.room_img_num IS '룸이미지번호f'
/

COMMENT ON COLUMN room.room_type IS '룸유형sdto'
/

COMMENT ON COLUMN room.room_descrip IS '룸설명'
/

ALTER TABLE room
    ADD CONSTRAINT FK_room_lodge_num_lodge_lodge_ FOREIGN KEY (lodge_num)
        REFERENCES lodge (lodge_num)
/

ALTER TABLE room
    ADD CONSTRAINT FK_room_room_img_num_room_img_ FOREIGN KEY (room_img_num)
        REFERENCES room_img (room_img_num)
/


-- nation Table Create SQL
CREATE TABLE review
(
    review_num      INT     NOT NULL, 
    mem_num         INT     NULL, 
    lodge_num       INT     NULL, 
    review_score    INT     NULL, 
    review_con      CLOB    NULL, 
    review_date     DATE    NULL, 
    CONSTRAINT REVIEW_PK PRIMARY KEY (review_num)
)
/

COMMENT ON TABLE review IS '이용후기'
/

COMMENT ON COLUMN review.review_num IS '게시글번호p'
/

COMMENT ON COLUMN review.mem_num IS '회원번호f'
/

COMMENT ON COLUMN review.lodge_num IS '숙소번호f'
/

COMMENT ON COLUMN review.review_score IS '별점'
/

COMMENT ON COLUMN review.review_con IS '게시글내용'
/

COMMENT ON COLUMN review.review_date IS '리뷰작성날짜'
/

ALTER TABLE review
    ADD CONSTRAINT FK_review_mem_num_member_mem_n FOREIGN KEY (mem_num)
        REFERENCES member (mem_num)
/

ALTER TABLE review
    ADD CONSTRAINT FK_review_lodge_num_lodge_lodg FOREIGN KEY (lodge_num)
        REFERENCES lodge (lodge_num)
/


-- nation Table Create SQL
CREATE TABLE reservation
(
    res_num               INT            NOT NULL, 
    mem_num               INT            NULL, 
    lodge_num             INT            NULL, 
    room_num              INT            NULL, 
    res_pax               INT            NULL, 
    res_check_in_date     DATE           NULL, 
    res_check_out_date    DATE           NULL, 
    res_cancel            VARCHAR2(5)    NULL, 
    res_price             INT            NULL, 
    res_checkin           VARCHAR2(5)    NULL, 
    CONSTRAINT RESERVATION_PK PRIMARY KEY (res_num)
)
/

COMMENT ON TABLE reservation IS '예약'
/

COMMENT ON COLUMN reservation.res_num IS '예약번호p'
/

COMMENT ON COLUMN reservation.mem_num IS '회원번호f'
/

COMMENT ON COLUMN reservation.lodge_num IS '숙소번호f'
/

COMMENT ON COLUMN reservation.room_num IS '룸번호f'
/

COMMENT ON COLUMN reservation.res_pax IS '인원수'
/

COMMENT ON COLUMN reservation.res_check_in_date IS '체크인일시'
/

COMMENT ON COLUMN reservation.res_check_out_date IS '체크아웃일시'
/

COMMENT ON COLUMN reservation.res_cancel IS '예약취소(Y/N)'
/

COMMENT ON COLUMN reservation.res_price IS '결제금액'
/

COMMENT ON COLUMN reservation.res_checkin IS '체크인여부(Y/N)'
/

ALTER TABLE reservation
    ADD CONSTRAINT FK_reservation_mem_num_member_ FOREIGN KEY (mem_num)
        REFERENCES member (mem_num)
/

ALTER TABLE reservation
    ADD CONSTRAINT FK_reservation_lodge_num_lodge FOREIGN KEY (lodge_num)
        REFERENCES lodge (lodge_num)
/

ALTER TABLE reservation
    ADD CONSTRAINT FK_reservation_room_num_room_r FOREIGN KEY (room_num)
        REFERENCES room (room_num)
/


-- nation Table Create SQL
CREATE TABLE suspend
(
    sus_num    INT     NOT NULL, 
    mem_num    INT     NULL, 
    sus_day    DATE    NULL, 
    CONSTRAINT SUSPEND_PK PRIMARY KEY (sus_num)
)
/

COMMENT ON TABLE suspend IS '정지'
/

COMMENT ON COLUMN suspend.sus_num IS '정지번호p'
/

COMMENT ON COLUMN suspend.mem_num IS '회원번호f'
/

COMMENT ON COLUMN suspend.sus_day IS '영구정지일'
/

ALTER TABLE suspend
    ADD CONSTRAINT FK_suspend_mem_num_member_mem_ FOREIGN KEY (mem_num)
        REFERENCES member (mem_num)
/


-- nation Table Create SQL
CREATE TABLE payment
(
    pay_num       INT             NOT NULL, 
    res_num       int             NULL, 
    pay_price     INT             NULL, 
    pay_method    VARCHAR2(20)    NULL, 
    pay_cancel    VARCHAR2(5)     NULL, 
    pay_date      date            NULL, 
    CONSTRAINT PAYMENT_PK PRIMARY KEY (pay_num)
)
/

COMMENT ON TABLE payment IS '결제'
/

COMMENT ON COLUMN payment.pay_num IS '결제번호p'
/

COMMENT ON COLUMN payment.res_num IS '예약번호f'
/

COMMENT ON COLUMN payment.pay_price IS '실제결제금액'
/

COMMENT ON COLUMN payment.pay_method IS '결제수단'
/

COMMENT ON COLUMN payment.pay_cancel IS '결제취소(Y/N)'
/

COMMENT ON COLUMN payment.pay_date IS '결제일'
/

ALTER TABLE payment
    ADD CONSTRAINT FK_payment_res_num_reservation FOREIGN KEY (res_num)
        REFERENCES reservation (res_num)
/


-- nation Table Create SQL
CREATE TABLE tour_spot
(
    spot_code        INT              NOT NULL, 
    spot_name        VARCHAR2(20)     NULL, 
    spot_coor_x      VARCHAR2(20)     NULL, 
    sopt_coor_y      VARCHAR2(20)     NULL, 
    spot_address     VARCHAR2(100)    NULL, 
    tour_spot_img    VARCHAR2(300)    NULL, 
    spot_descrip     varchar2(300)    NULL, 
    CONSTRAINT TOUR_SPOT_PK PRIMARY KEY (spot_code)
)
/

COMMENT ON TABLE tour_spot IS '관광지'
/

COMMENT ON COLUMN tour_spot.spot_code IS '관광지번호p'
/

COMMENT ON COLUMN tour_spot.spot_name IS '관광지이름'
/

COMMENT ON COLUMN tour_spot.spot_coor_x IS '관광지좌표_X'
/

COMMENT ON COLUMN tour_spot.sopt_coor_y IS '관광지좌표_Y'
/

COMMENT ON COLUMN tour_spot.spot_address IS '관광지주소'
/

COMMENT ON COLUMN tour_spot.tour_spot_img IS '관광지 이미지번호f'
/

COMMENT ON COLUMN tour_spot.spot_descrip IS '관광지설명'
/


-- nation Table Create SQL
CREATE TABLE comment1
(
    comm_num        INT              NOT NULL, 
    review_num      INT              NULL, 
    mem_num         INT              NULL, 
    comm_content    VARCHAR2(300)    NULL, 
    comm_date       DATE             NULL, 
    CONSTRAINT COMMENT1_PK PRIMARY KEY (comm_num)
)
/

COMMENT ON TABLE comment1 IS '댓글'
/

COMMENT ON COLUMN comment1.comm_num IS '댓글번호p'
/

COMMENT ON COLUMN comment1.review_num IS '게시글번호f'
/

COMMENT ON COLUMN comment1.mem_num IS '회원번호f'
/

COMMENT ON COLUMN comment1.comm_content IS '댓글내용'
/

COMMENT ON COLUMN comment1.comm_date IS '댓글작성날짜'
/

ALTER TABLE comment1
    ADD CONSTRAINT FK_comment1_review_num_review_ FOREIGN KEY (review_num)
        REFERENCES review (review_num)
/

ALTER TABLE comment1
    ADD CONSTRAINT FK_comment1_mem_num_member_mem FOREIGN KEY (mem_num)
        REFERENCES member (mem_num)
/


-- nation Table Create SQL
CREATE TABLE wishlist
(
    mem_num      INT     NULL, 
    lodge_num    INT     NULL, 
    wish_date    DATE    NULL, 
    CONSTRAINT WISHLIST_PK PRIMARY KEY (mem_num)
)
/

COMMENT ON TABLE wishlist IS '위시리스트'
/

COMMENT ON COLUMN wishlist.mem_num IS '찜한회원번호f'
/

COMMENT ON COLUMN wishlist.lodge_num IS '찜한숙소번호f'
/

COMMENT ON COLUMN wishlist.wish_date IS '찜한 날짜'
/

ALTER TABLE wishlist
    ADD CONSTRAINT FK_wishlist_lodge_num_lodge_lo FOREIGN KEY (lodge_num)
        REFERENCES lodge (lodge_num)
/

ALTER TABLE wishlist
    ADD CONSTRAINT FK_wishlist_mem_num_member_mem FOREIGN KEY (mem_num)
        REFERENCES member (mem_num)
/


-- nation Table Create SQL
CREATE TABLE qna
(
    qna_num         INT               NOT NULL, 
    mem_num         INT               NULL, 
    qna_title       VARCHAR2(60)      NULL, 
    qna_content     VARCHAR2(3000)    NULL, 
    qna_date        DATE              NULL, 
    qna_ans         varchar2(3000)    NULL, 
    qna_ans_date    DATE              NULL, 
    qna_status      VARCHAR2(10)      NULL, 
    CONSTRAINT QNA_PK PRIMARY KEY (qna_num)
)
/

COMMENT ON TABLE qna IS '문의테이블'
/

COMMENT ON COLUMN qna.qna_num IS '문의 번호'
/

COMMENT ON COLUMN qna.mem_num IS '회원번호f'
/

COMMENT ON COLUMN qna.qna_title IS '문의제목'
/

COMMENT ON COLUMN qna.qna_content IS '문의내용'
/

COMMENT ON COLUMN qna.qna_date IS '문의날짜'
/

COMMENT ON COLUMN qna.qna_ans IS '답변'
/

COMMENT ON COLUMN qna.qna_ans_date IS '답변날짜'
/

COMMENT ON COLUMN qna.qna_status IS '답변상태(Y/N)'
/

ALTER TABLE qna
    ADD CONSTRAINT FK_qna_mem_num_member_mem_num FOREIGN KEY (mem_num)
        REFERENCES member (mem_num)
/

--증가시퀀스
CREATE SEQUENCE MEMBER_SEQ
START WITH 1
INCREMENT BY 1;
/


CREATE SEQUENCE SUSPEND_SEQ
START WITH 1
INCREMENT BY 1;
/


CREATE SEQUENCE LODGE_SEQ
START WITH 1
INCREMENT BY 1;
/


CREATE SEQUENCE ROOM_SEQ
START WITH 1
INCREMENT BY 1;
/


CREATE SEQUENCE TOUR_SPOT_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE SEQUENCE REVIEW_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE SEQUENCE COMMENT1_SEQ
START WITH 1
INCREMENT BY 1;
/


CREATE SEQUENCE NATION_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE SEQUENCE RESERVATION_SEQ
START WITH 1
INCREMENT BY 1;
/


CREATE SEQUENCE PAYMENT_SEQ
START WITH 1
INCREMENT BY 1;
/


CREATE SEQUENCE QNA_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE SEQUENCE ROOM_IMG_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE SEQUENCE LODGE_IMG_SEQ
START WITH 1
INCREMENT BY 1;
/


--외래키, 체크,기본값

--멤버

ALTER TABLE MEMBER
ADD CONSTRAINT 	MEM_GENDER_CK CHECK(MEM_GENDER IN('F','M'))
ADD CONSTRAINT MEM_TYPE_CK CHECK(MEM_TYPE IN('A','O','U'))
ADD CONSTRAINT MEM_STATUS_CK CHECK(MEM_STATUS IN('Y','N'));

ALTER TABLE MEMBER MODIFY MEM_STATUS DEFAULT 'Y';
ALTER TABLE MEMBER MODIFY MEM_NOSHOW DEFAULT '0';


--숙소
ALTER TABLE LODGE
ADD CONSTRAINT LODGE_POWER_CK CHECK(LODGE_POWER IN('Y','N'))
ADD CONSTRAINT LODGE_TYPE_CK CHECK(LODGE_TYPE IN('H','R','C','G','M'));

ALTER TABLE LODGE MODIFY LODGE_POWER DEFAULT 'N';



--룸

ALTER TABLE ROOM
ADD CONSTRAINT ROOM_TYPE_CK CHECK(ROOM_TYPE IN('S','D','T','O'));


--예약


ALTER TABLE RESERVATION
ADD CONSTRAINT RES_CANCEL_CK CHECK(RES_CANCEL IN('Y','N'))
ADD CONSTRAINT RES_CHECKIN_CK CHECK(RES_CHECKIN IN('Y','N'));

ALTER TABLE RESERVATION MODIFY RES_CANCEL DEFAULT 'N';
ALTER TABLE RESERVATION MODIFY RES_CHECKIN DEFAULT 'N';


--결제

ALTER TABLE PAYMENT
ADD CONSTRAINT PAY_CANCEL_CK CHECK(PAY_CANCEL IN('Y','N'));

ALTER TABLE PAYMENT MODIFY PAY_CANCEL DEFAULT 'N';



--룸 이미지
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/72/80/93/7280930b25c1283488fc3de63c491522.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/15/35/de/1535de0593a51321e1e0775276d5c0fb.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/52/07/eb/5207eb23b76ebcc557e2e71cfce293fb.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/a1/6e/fa/a16efa9d42e5a9280ae4fa276fbca2d3.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/b0/01/f9/b001f9249eb7a66e81ad568fd9a0edff.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/56/d7/44/56d744c4ee1714c5f7cbf012649b2a7e.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/49/39/da/4939da2b1cbe627cb885ab1c69c2c9cb.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/ca/1d/0d/ca1d0da20622305e8a4bd0b86f0c7a85.jpg');


--숙소 이미지
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/72/80/93/7280930b25c1283488fc3de63c491522.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/15/35/de/1535de0593a51321e1e0775276d5c0fb.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/52/07/eb/5207eb23b76ebcc557e2e71cfce293fb.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/a1/6e/fa/a16efa9d42e5a9280ae4fa276fbca2d3.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/b0/01/f9/b001f9249eb7a66e81ad568fd9a0edff.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/56/d7/44/56d744c4ee1714c5f7cbf012649b2a7e.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/49/39/da/4939da2b1cbe627cb885ab1c69c2c9cb.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/ca/1d/0d/ca1d0da20622305e8a4bd0b86f0c7a85.jpg');



--국적
INSERT INTO NATION VALUES (NATION_SEQ.NEXTVAL,'KOR',NULL);
INSERT INTO NATION VALUES (NATION_SEQ.NEXTVAL,'MEX',NULL);
INSERT INTO NATION VALUES (NATION_SEQ.NEXTVAL,'DEN',NULL);
INSERT INTO NATION VALUES (NATION_SEQ.NEXTVAL,'USA',NULL);
INSERT INTO NATION VALUES (NATION_SEQ.NEXTVAL,'RUS',NULL);
INSERT INTO NATION VALUES (NATION_SEQ.NEXTVAL,'CWE',NULL);


--멤버
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'ADMIN','ADMIN','ADMIN','M','010-1234-0001',1,0,'A','Y',SYSDATE,NULL,0);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'OWNER','OWNER','OWNER','M','010-1234-0002',2,0,'O','Y',SYSDATE,NULL,0);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'ID001@NAVER.COM','PW001','NAME01','F','010-1234-0003',3,350,'U','Y',SYSDATE,NULL,1);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'ID002@NAVER.COM','PW002','NAME02','M','010-1234-0004',4,155,'U','Y',SYSDATE,NULL,0);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'ID003@NAVER.COM','PW003','NAME03','F','010-1234-0005',5,195,'U','Y',SYSDATE,NULL,2);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'ID004@NAVER.COM','PW004','NAME04','F','010-1234-0006',6,483,'U','Y',SYSDATE,NULL,1);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'ID005@NAVER.COM','PW005','NAME05','M','010-1234-0007',1,150,'U','Y',SYSDATE,NULL,0);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'ID006@NAVER.COM','PW006','NAME06','M','010-1234-0008',3,200,'U','Y',SYSDATE,NULL,1);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'ID007@NAVER.COM','PW007','NAME07','M','010-1234-0009',3,424,'U','Y',SYSDATE,NULL,2);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'ID008@NAVER.COM','PW008','NAME08','M','010-1234-0010',4,133,'U','Y',SYSDATE,NULL,0);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'ID009@NAVER.COM','PW009','NAME09','F','010-1234-0011',1,92,'U','Y',SYSDATE,NULL,1);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'ID010@NAVER.COM','PW010','NAME10','F','010-1234-0012',2,0,'U','Y',SYSDATE,NULL,0);

--숙소
INSERT INTO LODGE VALUES (LODGE_SEQ.NEXTVAL,'효리네민박시즌1','이상순','01012341111','서울시 종로구 세종로1','H',NULL,'37.586361','126.97479','서귀포시','N',1);
INSERT INTO LODGE VALUES (LODGE_SEQ.NEXTVAL,'효리네민박시즌2','2상순','01012341112','서울시 종로구 세종로2','M',NULL,'37.586361','126.97479','서귀포시','Y',2);
INSERT INTO LODGE VALUES (LODGE_SEQ.NEXTVAL,'효리네민박시즌3','3상순','01012341112','서울시 종로구 세종로2','M',NULL,'37.586361','126.97479','서귀포시','Y',2);
INSERT INTO LODGE VALUES (LODGE_SEQ.NEXTVAL,'건축학개론시즌2','수지','01012341114','서울특별시 서초구 헌인릉길 34','R',NULL,'33.269397','126.655645','제주시','N',4);
INSERT INTO LODGE VALUES (LODGE_SEQ.NEXTVAL,'건축학개론시즌2','수지','01012341114','서울특별시 서초구 헌인릉길 34','R',NULL,'33.269397','126.655645','제주시','N',4);


--룸
INSERT INTO ROOM VALUES (ROOM_SEQ.NEXTVAL,1,'아이유',32000,2,1,'S',NULL);
INSERT INTO ROOM VALUES (ROOM_SEQ.NEXTVAL,2,'수지',32000,3,2,'D',NULL);
INSERT INTO ROOM VALUES (ROOM_SEQ.NEXTVAL,3,'윤아',32000,2,3,'T',NULL);
INSERT INTO ROOM VALUES (ROOM_SEQ.NEXTVAL,4,'수지',32000,2,4,'O',NULL);
INSERT INTO ROOM VALUES (ROOM_SEQ.NEXTVAL,5,'이선균',32000,2,5,'D',NULL);

--정지
INSERT INTO SUSPEND VALUES (SUSPEND_SEQ.NEXTVAL,3,SYSDATE);

--예약
INSERT INTO RESERVATION VALUES (RESERVATION_SEQ.NEXTVAL,3,4,4,2,'20190910','20190914','N',236000,NULL);
INSERT INTO RESERVATION VALUES (RESERVATION_SEQ.NEXTVAL,3,2,2,2,'20190910','20190914','N',236000,NULL);
INSERT INTO RESERVATION VALUES (RESERVATION_SEQ.NEXTVAL,4,3,3,2,'20190910','20190914','N',236000,NULL);
INSERT INTO RESERVATION VALUES (RESERVATION_SEQ.NEXTVAL,3,1,1,2,'20190910','20190914','N',236000,NULL);
INSERT INTO RESERVATION VALUES (RESERVATION_SEQ.NEXTVAL,5,4,4,2,'20190910','20190914','N',236000,NULL);
INSERT INTO RESERVATION VALUES (RESERVATION_SEQ.NEXTVAL,6,2,2,2,'20190910','20190914','N',236000,NULL);

--결제
INSERT INTO PAYMENT VALUES (PAYMENT_SEQ.NEXTVAL,1,36000,'CASH','N',SYSDATE);
INSERT INTO PAYMENT VALUES (PAYMENT_SEQ.NEXTVAL,2,36000,'CASH','N',SYSDATE);
INSERT INTO PAYMENT VALUES (PAYMENT_SEQ.NEXTVAL,3,36000,'CASH','N',SYSDATE);
INSERT INTO PAYMENT VALUES (PAYMENT_SEQ.NEXTVAL,4,36000,'CASH','N',SYSDATE);
INSERT INTO PAYMENT VALUES (PAYMENT_SEQ.NEXTVAL,5,36000,'CASH','N',SYSDATE);
INSERT INTO PAYMENT VALUES (PAYMENT_SEQ.NEXTVAL,6,36000,'CASH','N',SYSDATE);

--이용후기
INSERT INTO REVIEW VALUES (REVIEW_SEQ.NEXTVAL,3,1,1,NULL,SYSDATE);
INSERT INTO REVIEW VALUES (REVIEW_SEQ.NEXTVAL,4,2,2,NULL,SYSDATE);
INSERT INTO REVIEW VALUES (REVIEW_SEQ.NEXTVAL,5,3,3,NULL,SYSDATE);
INSERT INTO REVIEW VALUES (REVIEW_SEQ.NEXTVAL,3,4,4,NULL,SYSDATE);
INSERT INTO REVIEW VALUES (REVIEW_SEQ.NEXTVAL,5,5,5,NULL,SYSDATE);

--댓글
INSERT INTO COMMENT1 VALUES (COMMENT1_SEQ.NEXTVAL,1,1,'',SYSDATE);
INSERT INTO COMMENT1 VALUES (COMMENT1_SEQ.NEXTVAL,2,2,'',SYSDATE);
INSERT INTO COMMENT1 VALUES (COMMENT1_SEQ.NEXTVAL,3,3,'',SYSDATE);
INSERT INTO COMMENT1 VALUES (COMMENT1_SEQ.NEXTVAL,4,4,'',SYSDATE);
INSERT INTO COMMENT1 VALUES (COMMENT1_SEQ.NEXTVAL,5,5,'',SYSDATE);
INSERT INTO COMMENT1 VALUES (COMMENT1_SEQ.NEXTVAL,4,6,'',SYSDATE);


--QNA
INSERT INTO QNA VALUES (QNA_SEQ.NEXTVAL,3,'QNA1',NULL,SYSDATE,NULL,SYSDATE,'N');
INSERT INTO QNA VALUES (QNA_SEQ.NEXTVAL,3,'QNA2',NULL,SYSDATE,NULL,SYSDATE,'N');
INSERT INTO QNA VALUES (QNA_SEQ.NEXTVAL,4,'QNA3',NULL,SYSDATE,NULL,SYSDATE,'N');
INSERT INTO QNA VALUES (QNA_SEQ.NEXTVAL,5,'QNA4',NULL,SYSDATE,NULL,SYSDATE,'N');
INSERT INTO QNA VALUES (QNA_SEQ.NEXTVAL,2,'QNA5',NULL,SYSDATE,NULL,SYSDATE,'N');



--관광지
INSERT INTO TOUR_SPOT VALUES (TOUR_SPOT_SEQ.NEXTVAL,'아쿠아리움','33.432776','126.927921','제주특별자치도 서귀포시 성산읍 섭지코지로 95',7,NULL);
INSERT INTO TOUR_SPOT VALUES (TOUR_SPOT_SEQ.NEXTVAL,'아쿠아리움','33.432776','126.927921','제주특별자치도 서귀포시 성산읍 섭지코지로 95',7,NULL);
INSERT INTO TOUR_SPOT VALUES (TOUR_SPOT_SEQ.NEXTVAL,'주상절리','33.237786','126.425085','제주특별자치도 서귀포시 중문동',7,NULL);
INSERT INTO TOUR_SPOT VALUES (TOUR_SPOT_SEQ.NEXTVAL,'주상절리','33.237786','126.425085','제주특별자치도 서귀포시 중문동',7,NULL);


--찜하기
INSERT INTO WISHLIST VALUES (3,3,SYSDATE);
INSERT INTO WISHLIST VALUES (4,4,SYSDATE);
INSERT INTO WISHLIST VALUES (5,5,SYSDATE);
INSERT INTO WISHLIST VALUES (1,4,SYSDATE);
INSERT INTO WISHLIST VALUES (2,4,SYSDATE);




commit;

