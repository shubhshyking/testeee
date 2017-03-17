SELECT username, email FROM xbbnhbh_login WHERE role='user';

SELECT question,answer FROM xbbnhbh_questions; 

SELECT u.username, r.marks FROM xbbnhbh_login u JOIN xbbnhbh_result r ON u.userid=r.userid ORDER BY r.marks DESC; 