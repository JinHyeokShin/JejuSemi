

-----------------����------------------
--���������� ������̺� �� �������� ����
BEGIN
    FOR C IN (SELECT TABLE_NAME FROM USER_TABLES) LOOP
    EXECUTE IMMEDIATE ('DROP TABLE '||C.TABLE_NAME||' CASCADE CONSTRAINTS');
    END LOOP;
END;
/
--���������� ��� ������ ����
BEGIN
FOR C IN (SELECT * FROM USER_SEQUENCES) LOOP
  EXECUTE IMMEDIATE 'DROP SEQUENCE '||C.SEQUENCE_NAME;
END LOOP;
END;
/
---------------------------------------
-- ���̺� ������ ���踦 ����Ͽ� �� ���� �����ص� ������ �߻����� �ʰ� ���ĵǾ����ϴ�.

-- nation Table Create SQL
CREATE TABLE nation
(
    nation_code    INT              NOT NULL, 
    nation_name    VARCHAR2(10)     NULL, 
    nation_img     VARCHAR2(300)    NULL, 
    CONSTRAINT NATION_PK PRIMARY KEY (nation_code)
)
/

COMMENT ON TABLE nation IS '�����ڵ�'
/

COMMENT ON COLUMN nation.nation_code IS '������ȣ'
/

COMMENT ON COLUMN nation.nation_name IS '�����ڵ�'
/

COMMENT ON COLUMN nation.nation_img IS '�����̹�����ȣF'
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

COMMENT ON TABLE member IS '���'
/

COMMENT ON COLUMN member.mem_num IS 'ȸ����ȣp'
/

COMMENT ON COLUMN member.mem_id IS 'ȸ���̸���'
/

COMMENT ON COLUMN member.mem_pw IS 'ȸ����й�ȣ'
/

COMMENT ON COLUMN member.mem_name IS 'ȸ���̸�'
/

COMMENT ON COLUMN member.mem_gender IS 'ȸ������(MF)'
/

COMMENT ON COLUMN member.mem_phone IS 'ȸ����ȭ��ȣ'
/

COMMENT ON COLUMN member.nation_num IS '������ȣf'
/

COMMENT ON COLUMN member.mem_point IS 'ȸ�� ����Ʈ'
/

COMMENT ON COLUMN member.mem_type IS 'ȸ������(AOU)'
/

COMMENT ON COLUMN member.mem_status IS 'ȸ������(Y/N)'
/

COMMENT ON COLUMN member.mem_join IS 'ȸ�������Ͻ�'
/

COMMENT ON COLUMN member.mem_out IS 'ȸ��Ż����'
/

COMMENT ON COLUMN member.mem_noshow IS '����'
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

COMMENT ON TABLE lodge IS '���ھ���'
/

COMMENT ON COLUMN lodge.lodge_num IS '���ҹ�ȣp'
/

COMMENT ON COLUMN lodge.lodge_name IS '���Ҹ�'
/

COMMENT ON COLUMN lodge.lodge_owner IS '���ҿ���'
/

COMMENT ON COLUMN lodge.lodge_contact IS '���ҿ���ó'
/

COMMENT ON COLUMN lodge.lodge_address IS '�����ּ�'
/

COMMENT ON COLUMN lodge.lodge_type IS '��������hrcgm'
/

COMMENT ON COLUMN lodge.lodge_descrip IS '���Ҽ���'
/

COMMENT ON COLUMN lodge.lodge_coor_x IS '������ǥ_X'
/

COMMENT ON COLUMN lodge.lodge_coor_y IS '������ǥ_Y'
/

COMMENT ON COLUMN lodge.lodge_district IS '������������'
/

COMMENT ON COLUMN lodge.lodge_power IS '�����Ŀ�(YN)'
/

COMMENT ON COLUMN lodge.lodge_img_num IS '�����̹�����ȣf'
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

COMMENT ON TABLE room IS '���ҹ�'
/

COMMENT ON COLUMN room.room_num IS '��ѹ�p'
/

COMMENT ON COLUMN room.lodge_num IS '���ҹ�ȣf'
/

COMMENT ON COLUMN room.room_name IS '���̸�'
/

COMMENT ON COLUMN room.room_price IS '�밡��'
/

COMMENT ON COLUMN room.room_pax IS '���ο�'
/

COMMENT ON COLUMN room.room_img_num IS '���̹�����ȣf'
/

COMMENT ON COLUMN room.room_type IS '������sdto'
/

COMMENT ON COLUMN room.room_descrip IS '�뼳��'
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

COMMENT ON TABLE review IS '�̿��ı�'
/

COMMENT ON COLUMN review.review_num IS '�Խñ۹�ȣp'
/

COMMENT ON COLUMN review.mem_num IS 'ȸ����ȣf'
/

COMMENT ON COLUMN review.lodge_num IS '���ҹ�ȣf'
/

COMMENT ON COLUMN review.review_score IS '����'
/

COMMENT ON COLUMN review.review_con IS '�Խñ۳���'
/

COMMENT ON COLUMN review.review_date IS '�����ۼ���¥'
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

COMMENT ON TABLE reservation IS '����'
/

COMMENT ON COLUMN reservation.res_num IS '�����ȣp'
/

COMMENT ON COLUMN reservation.mem_num IS 'ȸ����ȣf'
/

COMMENT ON COLUMN reservation.lodge_num IS '���ҹ�ȣf'
/

COMMENT ON COLUMN reservation.room_num IS '���ȣf'
/

COMMENT ON COLUMN reservation.res_pax IS '�ο���'
/

COMMENT ON COLUMN reservation.res_check_in_date IS 'üũ���Ͻ�'
/

COMMENT ON COLUMN reservation.res_check_out_date IS 'üũ�ƿ��Ͻ�'
/

COMMENT ON COLUMN reservation.res_cancel IS '�������(Y/N)'
/

COMMENT ON COLUMN reservation.res_price IS '�����ݾ�'
/

COMMENT ON COLUMN reservation.res_checkin IS 'üũ�ο���(Y/N)'
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

COMMENT ON TABLE suspend IS '����'
/

COMMENT ON COLUMN suspend.sus_num IS '������ȣp'
/

COMMENT ON COLUMN suspend.mem_num IS 'ȸ����ȣf'
/

COMMENT ON COLUMN suspend.sus_day IS '����������'
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

COMMENT ON TABLE payment IS '����'
/

COMMENT ON COLUMN payment.pay_num IS '������ȣp'
/

COMMENT ON COLUMN payment.res_num IS '�����ȣf'
/

COMMENT ON COLUMN payment.pay_price IS '���������ݾ�'
/

COMMENT ON COLUMN payment.pay_method IS '��������'
/

COMMENT ON COLUMN payment.pay_cancel IS '�������(Y/N)'
/

COMMENT ON COLUMN payment.pay_date IS '������'
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

COMMENT ON TABLE tour_spot IS '������'
/

COMMENT ON COLUMN tour_spot.spot_code IS '��������ȣp'
/

COMMENT ON COLUMN tour_spot.spot_name IS '�������̸�'
/

COMMENT ON COLUMN tour_spot.spot_coor_x IS '��������ǥ_X'
/

COMMENT ON COLUMN tour_spot.sopt_coor_y IS '��������ǥ_Y'
/

COMMENT ON COLUMN tour_spot.spot_address IS '�������ּ�'
/

COMMENT ON COLUMN tour_spot.tour_spot_img IS '������ �̹�����ȣf'
/

COMMENT ON COLUMN tour_spot.spot_descrip IS '����������'
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

COMMENT ON TABLE comment1 IS '���'
/

COMMENT ON COLUMN comment1.comm_num IS '��۹�ȣp'
/

COMMENT ON COLUMN comment1.review_num IS '�Խñ۹�ȣf'
/

COMMENT ON COLUMN comment1.mem_num IS 'ȸ����ȣf'
/

COMMENT ON COLUMN comment1.comm_content IS '��۳���'
/

COMMENT ON COLUMN comment1.comm_date IS '����ۼ���¥'
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

COMMENT ON TABLE wishlist IS '���ø���Ʈ'
/

COMMENT ON COLUMN wishlist.mem_num IS '����ȸ����ȣf'
/

COMMENT ON COLUMN wishlist.lodge_num IS '���Ѽ��ҹ�ȣf'
/

COMMENT ON COLUMN wishlist.wish_date IS '���� ��¥'
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

COMMENT ON TABLE qna IS '�������̺�'
/

COMMENT ON COLUMN qna.qna_num IS '���� ��ȣ'
/

COMMENT ON COLUMN qna.mem_num IS 'ȸ����ȣf'
/

COMMENT ON COLUMN qna.qna_title IS '��������'
/

COMMENT ON COLUMN qna.qna_content IS '���ǳ���'
/

COMMENT ON COLUMN qna.qna_date IS '���ǳ�¥'
/

COMMENT ON COLUMN qna.qna_ans IS '�亯'
/

COMMENT ON COLUMN qna.qna_ans_date IS '�亯��¥'
/

COMMENT ON COLUMN qna.qna_status IS '�亯����(Y/N)'
/

ALTER TABLE qna
    ADD CONSTRAINT FK_qna_mem_num_member_mem_num FOREIGN KEY (mem_num)
        REFERENCES member (mem_num)
/

--����������
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


--�ܷ�Ű, üũ,�⺻��

--���

ALTER TABLE MEMBER
ADD CONSTRAINT 	MEM_GENDER_CK CHECK(MEM_GENDER IN('F','M'))
ADD CONSTRAINT MEM_TYPE_CK CHECK(MEM_TYPE IN('A','O','U'))
ADD CONSTRAINT MEM_STATUS_CK CHECK(MEM_STATUS IN('Y','N'));

ALTER TABLE MEMBER MODIFY MEM_STATUS DEFAULT 'Y';
ALTER TABLE MEMBER MODIFY MEM_NOSHOW DEFAULT '0';


--����
ALTER TABLE LODGE
ADD CONSTRAINT LODGE_POWER_CK CHECK(LODGE_POWER IN('Y','N'))
ADD CONSTRAINT LODGE_TYPE_CK CHECK(LODGE_TYPE IN('H','R','C','G','M'));

ALTER TABLE LODGE MODIFY LODGE_POWER DEFAULT 'N';



--��

ALTER TABLE ROOM
ADD CONSTRAINT ROOM_TYPE_CK CHECK(ROOM_TYPE IN('S','D','T','O'));


--����


ALTER TABLE RESERVATION
ADD CONSTRAINT RES_CANCEL_CK CHECK(RES_CANCEL IN('Y','N'))
ADD CONSTRAINT RES_CHECKIN_CK CHECK(RES_CHECKIN IN('Y','N'));

ALTER TABLE RESERVATION MODIFY RES_CANCEL DEFAULT 'N';
ALTER TABLE RESERVATION MODIFY RES_CHECKIN DEFAULT 'N';


--����

ALTER TABLE PAYMENT
ADD CONSTRAINT PAY_CANCEL_CK CHECK(PAY_CANCEL IN('Y','N'));

ALTER TABLE PAYMENT MODIFY PAY_CANCEL DEFAULT 'N';



--�� �̹���
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/72/80/93/7280930b25c1283488fc3de63c491522.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/15/35/de/1535de0593a51321e1e0775276d5c0fb.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/52/07/eb/5207eb23b76ebcc557e2e71cfce293fb.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/a1/6e/fa/a16efa9d42e5a9280ae4fa276fbca2d3.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/b0/01/f9/b001f9249eb7a66e81ad568fd9a0edff.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/56/d7/44/56d744c4ee1714c5f7cbf012649b2a7e.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/49/39/da/4939da2b1cbe627cb885ab1c69c2c9cb.jpg');
INSERT INTO ROOM_IMG VALUES (ROOM_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/ca/1d/0d/ca1d0da20622305e8a4bd0b86f0c7a85.jpg');


--���� �̹���
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/72/80/93/7280930b25c1283488fc3de63c491522.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/15/35/de/1535de0593a51321e1e0775276d5c0fb.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/52/07/eb/5207eb23b76ebcc557e2e71cfce293fb.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/a1/6e/fa/a16efa9d42e5a9280ae4fa276fbca2d3.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/b0/01/f9/b001f9249eb7a66e81ad568fd9a0edff.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/56/d7/44/56d744c4ee1714c5f7cbf012649b2a7e.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/49/39/da/4939da2b1cbe627cb885ab1c69c2c9cb.jpg');
INSERT INTO LODGE_IMG VALUES (LODGE_IMG_SEQ.NEXTVAL,'https://i.pinimg.com/564x/ca/1d/0d/ca1d0da20622305e8a4bd0b86f0c7a85.jpg');



--����
INSERT INTO NATION VALUES (NATION_SEQ.NEXTVAL,'KOR',NULL);
INSERT INTO NATION VALUES (NATION_SEQ.NEXTVAL,'MEX',NULL);
INSERT INTO NATION VALUES (NATION_SEQ.NEXTVAL,'DEN',NULL);
INSERT INTO NATION VALUES (NATION_SEQ.NEXTVAL,'USA',NULL);
INSERT INTO NATION VALUES (NATION_SEQ.NEXTVAL,'RUS',NULL);
INSERT INTO NATION VALUES (NATION_SEQ.NEXTVAL,'CWE',NULL);


--���
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

--����
INSERT INTO LODGE VALUES (LODGE_SEQ.NEXTVAL,'ȿ���׹ιڽ���1','�̻��','01012341111','����� ���α� ������1','H',NULL,'37.586361','126.97479','��������','N',1);
INSERT INTO LODGE VALUES (LODGE_SEQ.NEXTVAL,'ȿ���׹ιڽ���2','2���','01012341112','����� ���α� ������2','M',NULL,'37.586361','126.97479','��������','Y',2);
INSERT INTO LODGE VALUES (LODGE_SEQ.NEXTVAL,'ȿ���׹ιڽ���3','3���','01012341112','����� ���α� ������2','M',NULL,'37.586361','126.97479','��������','Y',2);
INSERT INTO LODGE VALUES (LODGE_SEQ.NEXTVAL,'�����а��н���2','����','01012341114','����Ư���� ���ʱ� ���θ��� 34','R',NULL,'33.269397','126.655645','���ֽ�','N',4);
INSERT INTO LODGE VALUES (LODGE_SEQ.NEXTVAL,'�����а��н���2','����','01012341114','����Ư���� ���ʱ� ���θ��� 34','R',NULL,'33.269397','126.655645','���ֽ�','N',4);


--��
INSERT INTO ROOM VALUES (ROOM_SEQ.NEXTVAL,1,'������',32000,2,1,'S',NULL);
INSERT INTO ROOM VALUES (ROOM_SEQ.NEXTVAL,2,'����',32000,3,2,'D',NULL);
INSERT INTO ROOM VALUES (ROOM_SEQ.NEXTVAL,3,'����',32000,2,3,'T',NULL);
INSERT INTO ROOM VALUES (ROOM_SEQ.NEXTVAL,4,'����',32000,2,4,'O',NULL);
INSERT INTO ROOM VALUES (ROOM_SEQ.NEXTVAL,5,'�̼���',32000,2,5,'D',NULL);

--����
INSERT INTO SUSPEND VALUES (SUSPEND_SEQ.NEXTVAL,3,SYSDATE);

--����
INSERT INTO RESERVATION VALUES (RESERVATION_SEQ.NEXTVAL,3,4,4,2,'20190910','20190914','N',236000,NULL);
INSERT INTO RESERVATION VALUES (RESERVATION_SEQ.NEXTVAL,3,2,2,2,'20190910','20190914','N',236000,NULL);
INSERT INTO RESERVATION VALUES (RESERVATION_SEQ.NEXTVAL,4,3,3,2,'20190910','20190914','N',236000,NULL);
INSERT INTO RESERVATION VALUES (RESERVATION_SEQ.NEXTVAL,3,1,1,2,'20190910','20190914','N',236000,NULL);
INSERT INTO RESERVATION VALUES (RESERVATION_SEQ.NEXTVAL,5,4,4,2,'20190910','20190914','N',236000,NULL);
INSERT INTO RESERVATION VALUES (RESERVATION_SEQ.NEXTVAL,6,2,2,2,'20190910','20190914','N',236000,NULL);

--����
INSERT INTO PAYMENT VALUES (PAYMENT_SEQ.NEXTVAL,1,36000,'CASH','N',SYSDATE);
INSERT INTO PAYMENT VALUES (PAYMENT_SEQ.NEXTVAL,2,36000,'CASH','N',SYSDATE);
INSERT INTO PAYMENT VALUES (PAYMENT_SEQ.NEXTVAL,3,36000,'CASH','N',SYSDATE);
INSERT INTO PAYMENT VALUES (PAYMENT_SEQ.NEXTVAL,4,36000,'CASH','N',SYSDATE);
INSERT INTO PAYMENT VALUES (PAYMENT_SEQ.NEXTVAL,5,36000,'CASH','N',SYSDATE);
INSERT INTO PAYMENT VALUES (PAYMENT_SEQ.NEXTVAL,6,36000,'CASH','N',SYSDATE);

--�̿��ı�
INSERT INTO REVIEW VALUES (REVIEW_SEQ.NEXTVAL,3,1,1,NULL,SYSDATE);
INSERT INTO REVIEW VALUES (REVIEW_SEQ.NEXTVAL,4,2,2,NULL,SYSDATE);
INSERT INTO REVIEW VALUES (REVIEW_SEQ.NEXTVAL,5,3,3,NULL,SYSDATE);
INSERT INTO REVIEW VALUES (REVIEW_SEQ.NEXTVAL,3,4,4,NULL,SYSDATE);
INSERT INTO REVIEW VALUES (REVIEW_SEQ.NEXTVAL,5,5,5,NULL,SYSDATE);

--���
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



--������
INSERT INTO TOUR_SPOT VALUES (TOUR_SPOT_SEQ.NEXTVAL,'����Ƹ���','33.432776','126.927921','����Ư����ġ�� �������� ������ ���������� 95',7,NULL);
INSERT INTO TOUR_SPOT VALUES (TOUR_SPOT_SEQ.NEXTVAL,'����Ƹ���','33.432776','126.927921','����Ư����ġ�� �������� ������ ���������� 95',7,NULL);
INSERT INTO TOUR_SPOT VALUES (TOUR_SPOT_SEQ.NEXTVAL,'�ֻ�����','33.237786','126.425085','����Ư����ġ�� �������� �߹���',7,NULL);
INSERT INTO TOUR_SPOT VALUES (TOUR_SPOT_SEQ.NEXTVAL,'�ֻ�����','33.237786','126.425085','����Ư����ġ�� �������� �߹���',7,NULL);


--���ϱ�
INSERT INTO WISHLIST VALUES (3,3,SYSDATE);
INSERT INTO WISHLIST VALUES (4,4,SYSDATE);
INSERT INTO WISHLIST VALUES (5,5,SYSDATE);
INSERT INTO WISHLIST VALUES (1,4,SYSDATE);
INSERT INTO WISHLIST VALUES (2,4,SYSDATE);




commit;

