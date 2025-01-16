USE practice_sql;

-- 데이터 제어어 (DCL)
-- 사용자에게 스키마에대한 권한 부여 및 회수에 사용

-- GRANT: 특정 사용자에게 스키마에 대한 권한을 부여하는 명령어
-- GRANT 권한리스트 ON 데이터베이스명.테이블 TO 유저이름@호스트;
GRANT SELECT, INSERT ON practice_sql.example_table
TO 'developer'@'%';

GRANT ALL ON *.* TO 'developer'@'%';

-- REVOKE : 특정 사용자에게 스키마에 대한 권한을 회수하는 명령어
-- REVOKE 권한리스트 ON 데이터베이스.테이블 FROM 유저이름@호스트;
REVOKE ALL ON *.* FROM 'developer'@'%';