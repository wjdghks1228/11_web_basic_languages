/* 

   # SQL (Structured Query Language) 구조화된 질문 언어
   
      - SQL(Structured Query Language)은 관계형 데이터베이스 관리 시스템(RDBMS)의 데이터를 관리하기 위해 설계된 특수 목적의 프로그래밍 언어이다. 
      
        - 관계형 데이터베이스 관리 시스템에서 자료의 검색과 관리, 데이터베이스 스키마 생성과 수정, 데이터베이스 객체 접근 조정 관리를 위해 고안되었다. 
      
        - 많은 수의 데이터베이스 관련 프로그램들이 SQL을 표준으로 채택하고 있다.
      
        - 데이터베이스 언어 SQL 문법의 종류는 다음 세 가지로 구별된다.
        
         1) 데이터 정의 언어 (DDL : Data Definition Language)   Ex) Create , Drop , Alter                : 뭔가 만들고 지우는 거에 관련된 명령어
         2) 데이터 조작 언어 (DML : Data Manipulation Language) Ex) Select , Insert , Update , Delete    : DDL을 조작하고 다루는 명령어
         3) 데이터 제어 언어 (DCL : Data Control Language)      Ex) Commit , Rollback,                   : 전반적인 환경설정 및 통제 하는 명령어



      1. 데이터 베이스 생성 , 사용 및 삭제 

         [ 데이터 베이스 생성 형식 ]
         - CREATE DATABASE DB_NAME;
            
                EX) CREATE DATABASE TEST_DB;
         
            
            
         [ 데이터 베이스 사용 형식 ]
         - USE DB_NAME;
            
                EX) USE TEST_DB;



         [ 데이터 베이스 삭제 형식 ]
         - DROP DATABASE DB_NAME;
            
                EX) DROP DATABASE TEST_DB;



      2. 테이블 생성과 삭제 
      
         [ 테이블 생성 형식 ]
         - CREATE TABLE TABLE_NAME(FIELD1 TYPE, FIELD2 TYPE , .....);

            EX)
            CREATE TABLE TABLE_NAME (
               NO INT,
               NAME VARCHAR (15),
               PHONE VARCHAR (15)
            );
         
         [ 테이블 삭제 형식 ]
         - DROP TABLE TABLE_NAME;



      3. 레코드(데이터)의 추가

         [ 레코드 추가 형식 ]
         - INSERT INTO TABLE_NAME(FIELD1,FIELD2,....) VALUES('VAL1','VAL2',....);
         
           EX) 
            INSERT INTO MEMBER ('1','JAMES','111-111');
            INSERT INTO MEMBER(NO,NAME,PHONE) VALUES('1','JAMES','111-111');
            INSERT INTO MEMBER(NAME) VALUES('JOHN');
                  
            
                
      4. 레코드 출력

         [ 레코드 출력 형식 ]
         - SELECT  FIELD1, FIELD2, ...  FROM TABLE_NAME [WHERE 조건절]

         EX)
            1)
            SELECT  
                  * 
            FROM 
                  MEMBER;
            
               2)
               SELECT 
                  NO,
                        NAME 
            FROM 
                  MEMBER;
            
      
        
        5. 레코드 필드 업데이트 

         [ 레코드 수정 형식 ]
         - UPDATE TABLE SET FIELD_NAME='NEW_VALUE' WHERE FIELD_CONDITION='DATA';
        
          EX) 
            UPDATE 
                  MEMBER 
            SET 
                  NAME='JACKSON', 
                        ADDRESS='서울시 마포구' 
            WHERE 
                  NO=3;
            
                
            
      6) 레코드 삭제

         [ 레코드 삭제 형식 ]
         - DELETE FROM TABLE WHERE NO=2;
           
         EX) 
            DELETE FROM 
                     MEMBER 
            WHERE 
                     NO=1;


       +@) 단축키 
         
         1) 실행 : 마우스 블록 + CTRL + ENTER
         2) 대문자 전환 : CTRL + SHFIT + U
         3) 쿼리 정렬 : CTRL + B
         
*/

# MYSQL 주석은 "#"

#예시 1 ) 데이터 베이스 생성 ( 새로고침으로 확인 )  
CREATE DATABASE TEST_DB;      #CREATE DATABASE 이름

#예시 2 ) 데이터 베이스 사용 
USE TEST_DB;                  #USE 이름

#예시 3 ) 테이블 생성 
CREATE TABLE MEMBER(  #CREATE TABLE 테이블이름 ()
	NUM INT,   		    	#숫자 : INT
    NAME VARCHAR(10),		#이름 : VARCHAR(최대개수)  ,(VARIABLE CHARACTER)
    HEIGHT DOUBLE,			#실수 : DOUBLE
    GENDER CHAR,    		#문자 : CHAR
    MEMO VARCHAR(50)
    
);

# 예시 4 ) 테이블 설명
DESC MEMBER;                                                    #DESC 테이블이름

# 예시 5 ) 데이터 추가 쿼리
INSERT INTO 				 									#INSERT INTO	
		MEMBER(NUM,NAME,HEIGHT,GENDER,MEMO)                     #보통 들여쓰기 2번
VALUES
		(1,'김철수',180.3,'m','남자사람');
        
INSERT INTO 				 									#INSERT INTO	
		MEMBER              #보통 들여쓰기 2번
VALUES
		(2,'영희',150.3,'g','여자사람');
        
INSERT INTO
		MEMBER(NUM,NAME)
VALUES
		(3,'제임스 고슬링');
    
# 예시 6 ) 데이터 조희 쿼리
SELECT 							#SELECT*FROM MEMBER
		*						#모든 컬럼 조회
FROM
		MEMBER;
        
SELECT
		NAME,
        HEIGHT,
        GENDER
FROM
		MEMBER;
	




