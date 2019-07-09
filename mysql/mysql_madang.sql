-- 
CREATE TABLE testdb.Book (
  bookid      int PRIMARY KEY,
  bookname    VARCHAR(40),
  publisher   VARCHAR(40),
  price       int 
);

CREATE TABLE  testdb.Customer (
  custid      int PRIMARY KEY,  
  name        VARCHAR(40),
  address     VARCHAR(50),
  phone       VARCHAR(20)
);


CREATE TABLE testdb.Orders (
  orderid int PRIMARY KEY,
  custid  int REFERENCES testdb.Customer(custid),
  bookid  int REFERENCES testdb.Book(bookid),
  saleprice int ,
  orderdate DATE
);

-- Book, project.Customer, project.Orders 데이터 생성
INSERT INTO testdb.BOOK VALUES(1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO testdb.BOOK VALUES(2, '축구아는 여자', '나무수', 13000);
INSERT INTO testdb.BOOK VALUES(3, '축구의 이해', '대한미디어', 22000);
INSERT INTO testdb.BOOK VALUES(4, '골프 바이블', '대한미디어', 35000);
INSERT INTO testdb.BOOK VALUES(5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO testdb.BOOK VALUES(6, '역도 단계별기술', '굿스포츠', 6000);
INSERT INTO testdb.BOOK VALUES(7, '야구의 추억', '이상미디어', 20000);
INSERT INTO testdb.BOOK VALUES(8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO testdb.BOOK VALUES(9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO testdb.BOOK VALUES(10, 'Olympic Champions', 'Pearson', 13000);

INSERT INTO testdb.Customer VALUES (1, '박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO testdb.Customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');  
INSERT INTO testdb.Customer VALUES (3, '장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO testdb.Customer VALUES (4, '추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO testdb.Customer VALUES (5, '박세리', '대한민국 대전',  NULL);

-- 주문(project.Orders) 테이블의 책값은 할인 판매를 가정함
INSERT INTO testdb.Orders VALUES (1, 1, 1, 6000, STR_TO_DATE('2014-07-01','%Y-%m-%d')); 
INSERT INTO testdb.Orders VALUES (2, 1, 3, 21000, STR_TO_DATE('2014-07-03','%Y-%m-%d'));
INSERT INTO testdb.Orders VALUES (3, 2, 5, 8000, STR_TO_DATE('2014-07-03','%Y-%m-%d')); 
INSERT INTO testdb.Orders VALUES (4, 3, 6, 6000, STR_TO_DATE('2014-07-04','%Y-%m-%d')); 
INSERT INTO testdb.Orders VALUES (5, 4, 7, 20000, STR_TO_DATE('2014-07-05','%Y-%m-%d'));
INSERT INTO testdb.Orders VALUES (6, 1, 2, 12000, STR_TO_DATE('2014-07-07','%Y-%m-%d'));
INSERT INTO testdb.Orders VALUES (7, 4, 8, 13000, STR_TO_DATE('2014-07-07','%Y-%m-%d'));
INSERT INTO testdb.Orders VALUES (8, 3, 10, 12000, STR_TO_DATE('2014-07-08','%Y-%m-%d')); 
INSERT INTO testdb.Orders VALUES (9, 2, 10, 7000, STR_TO_DATE('2014-07-09','%Y-%m-%d')); 
INSERT INTO testdb.Orders VALUES (10, 3, 8, 13000, STR_TO_DATE('2014-07-10','%Y-%m-%d'));


COMMIT;
