drop table if exists shopdb;

CREATE TABLE tbl_todo (
    tno BIGINT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    writer VARCHAR(255),
    due_date DATE,
    complete BIT NOT NULL,
    PRIMARY KEY (tno)
);

-- 1. 기본 할 일 항목 (완료되지 않음)
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Meeting at Noon', 'Atimaby', '2025-08-15', 0);

-- 2. 완료된 할 일 항목
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Replying to Email from company', 'Snoopy', '2025-04-10', 1);

-- 3. 마감일이 없는 할 일
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Eating lunch with my friends', 'Ryan', NULL, 0);

-- 4. 긴 제목을 가진 할 일
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Drafting a project plan for the new marketing campaign Q3 2025', 'Amy', '2025-12-20', 0);

-- 5. 오늘 마감인 할 일
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Call an important customer', 'Kimmy', CURDATE(), 0);

-- 6. 주말에 할 일
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Weekend gardening', 'Tom', '2025-05-03', 0);

-- 7. 장기 프로젝트
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Annual report preparation', 'Lisa', '2025-11-30', 0);

-- 8. 빠른 완료 항목
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Buy milk', 'John', '2025-04-28', 1);

-- 9. 휴가 관련 할 일
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Book summer vacation', 'Sarah', '2025-06-01', 0);

-- 10. 건강 관련 할 일
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Dentist appointment', 'Mike', '2025-07-15', 0);

-- 11. 가족 관련 할 일
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Parents anniversary gift', 'Emma', '2025-09-12', 0);

-- 12. 공부 관련 할 일
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Complete online course', 'David', '2025-05-20', 0);

-- 13. 집안일
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Clean the garage', 'Sophia', NULL, 0);

-- 14. 회의 준비
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Prepare presentation slides', 'Robert', '2025-08-22', 1);

-- 15. 친구 만남
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('College reunion dinner', 'Olivia', '2025-10-05', 0);

-- 16. 건강 검진
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Annual health checkup', 'James', '2025-09-01', 0);

-- 17. 차량 정비
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Car maintenance service', 'Ethan', '2025-07-08', 0);

-- 18. 독서 목표
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Finish reading "Atomic Habits"', 'Ava', '2025-06-30', 0);

-- 19. 재정 관리
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Review investment portfolio', 'Noah', '2025-12-15', 0);

-- 20. 기술 학습
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Learn React framework', 'Mia', NULL, 1);

-- 21. 집 수리
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Fix leaking faucet', 'Liam', '2025-05-15', 0);

-- 22. 명절 준비
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Christmas shopping', 'Charlotte', '2025-12-10', 0);

-- 23. 운동 목표
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Gym session', 'William', CURDATE(), 0);

-- 24. 취미 활동
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Paint landscape', 'Harper', '2025-08-01', 0);

-- 25. 네트워킹
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Industry conference attendance', 'Benjamin', '2025-11-05', 0);

-- 26. 자원 봉사
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Community center volunteering', 'Amelia', '2025-09-20', 0);

-- 27. 언어 학습
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Spanish lesson practice', 'Elijah', '2025-07-01', 1);

-- 28. 업무 정리
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Organize work desk', 'Abigail', NULL, 0);

-- 29. 음악 활동
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Piano recital preparation', 'Lucas', '2025-10-15', 0);

-- 30. 여행 계획
INSERT INTO tbl_todo (title, writer, due_date, complete) VALUES ('Plan weekend getaway', 'Evelyn', '2025-06-18', 0);