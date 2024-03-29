-- 고양이와 개는 몇 마리 있을까
SELECT ANIMAL_TYPE, COUNT(ANIMAL_TYPE) AS count
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE ASC;

-- 동명 동물 수 찾기
SELECT NAME, COUNT(NAME) AS count
FROM ANIMAL_INS
GROUP BY NAME
HAVING COUNT(NAME) >= 2
ORDER BY NAME;

-- 입양 시각 구하기(1)
-- TO_CHAR(datetime) 함수 사용
-- TO_CHAR(datetime, 'hh24') : datetime에서 시간을 24시간 단위로 추출
SELECT TO_CHAR(DATETIME,'HH24') AS HOUR, COUNT(*) AS COUNT
FROM ANIMAL_OUTS 
WHERE TO_CHAR(DATETIME,'HH24') BETWEEN 9 AND 19
GROUP BY TO_CHAR(DATETIME,'HH24')
ORDER BY TO_CHAR(DATETIME,'HH24');

-- 입양 시각 구하기(2)
-- LEVEL : 연속적으로 증가하는 값을 필요로 할 때 사용
-- DUAL : 더미 테이블 생성
-- CONNECT BY : 다중행 조회시 사용
-- 1. RIGHT [OUTER] JOIN : 왼쪽 테이블에 조인시킬 컬럼 값이 없는 경우
SELECT HOUR, COUNT(ANIMAL_ID) AS COUNT
FROM ANIMAL_OUTS O
RIGHT OUTER JOIN
(SELECT LEVEL - 1 AS HOUR -- 0부터 23까지의 임시 데이터 만들기
        FROM DUAL
        CONNECT BY LEVEL <= 24) L 
ON TO_CHAR(O.DATETIME, 'HH24') = L.HOUR -- 해당 시각에 입양한 동물의 아이디 수를 COUNT
GROUP BY HOUR
ORDER BY HOUR;

-- 2. LEFT [OUTER] JOIN : 오른쪽 테이블에 조인시킬 컬럼 값이 없는 경우
SELECT HOUR, COUNT(ANIMAL_ID) AS COUNT
FROM (SELECT LEVEL - 1 AS HOUR
    FROM DUAL
    CONNECT BY LEVEL <= 24) L
LEFT JOIN
    ANIMAL_OUTS R
ON L.HOUR = TO_CHAR(R.DATETIME, 'HH24')
GROUP BY HOUR
ORDER BY HOUR;
