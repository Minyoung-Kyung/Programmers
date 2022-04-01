-- 우유(Milk)와 요거트(Yogurt)를 동시에 구입한 장바구니가 있는지 알아보기
SELECT CART_ID
FROM CART_PRODUCTS
WHERE NAME = 'Milk' AND CART_ID IN (
    SELECT CART_ID
    FROM CART_PRODUCTS
    WHERE NAME = 'Yogurt')
ORDER BY ID; -- 아이디 순으로 정렬
