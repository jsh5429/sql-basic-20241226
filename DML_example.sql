USE school;
-- 1. 학생 테이블에 데이터 추가
-- [25001, 홍길동, 부산광역시 부산진구, 010-1111-1111]
-- [25002, 김철수, 부산광역시 동구, 010-1111-2222]
INSERT INTO student VALUES('25001', '홍길동', '부산광역시 부산진구', '010-1111-1111');
INSERT INTO student VALUES('25002', '김철수', '부산광역시 동구', '010-1111-2222');

-- 2. 수업 테이블에 데이터 추가
-- [AAA, 국어, 1, null]
-- [AAB, 수학, 2, null]
INSERT INTO class (class_code, name, class_room)
VALUES ('AAA', '국어', 1);
INSERT INTO class (class_code, name, class_room)
VALUES ('AAB', '수학', 2);

-- 3. 교실 테이블에 데이터 추가
-- [1, 2, 20]
-- [2, 2, 30]
INSERT INTO class_room VALUES (1, 2, 20);
INSERT INTO class_room VALUES (2, 2, 30);

-- 4. 교사 테이블에 데이터 추가
-- [2000010101, 이성계, 부산광역시 해운대구, 010-2222-1111, 일반교사]
-- [2000010102, 정약용, 대구광역시 달서구, 010-2222-2222, 학생주임]
-- [2000060201, 김선달, null, 010-2222-3333, null]
INSERT INTO teacher VALUES ('2000010101', '이성계', '부산광역시 해운대구', '010-2222-1111', '일반교사');
INSERT INTO teacher VALUES ('2000010102', '정약용', '대구광역시 달서구', '010-2222-2222', '학생주임');
INSERT INTO teacher VALUES ('2000060201', '김선달', null, '010-2222-3333', null);

-- 5. 수업 코드가 'AAA'인 수업에 대해 담당 교사를 '2000010102'로 지정
UPDATE class SET charge_teacher = '2000010102' WHERE class_code = 'AAA';

-- 6. 직책이 아직 정해지지 않은 교사에 대해서 직책을 '교생'으로 지정
UPDATE teacher SET position = '교생' WHERE position IS NULL;

-- 7. 교실의 좌석수가 25개 이상인 교실을 조회 (교실 번호, 좌석수)
SELECT class_room_number, seats FROM class_room WHERE seats >= 25;

-- 8. 학생 중 부산진구에 거주하는 학생의 이름을 조회
SELECT name FROM student WHERE address LIKE '%부산진구%';

-- 9. 현재 교사들의 직책의 종류를 중복없이 조회
SELECT DISTINCT position FROM teacher;