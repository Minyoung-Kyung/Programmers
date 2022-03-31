SELECT *
FROM PLACES
WHERE HOST_ID IN ( -- 2개 이상의 공간을 소유한 유저의 전체 정보 출력
    SELECT HOST_ID
    FROM PLACES
    GROUP BY HOST_ID
    HAVING COUNT(HOST_ID) > 1) -- 1보다 크면 "헤비 유저"
ORDER BY ID; -- 공간의 아이디로 정렬
