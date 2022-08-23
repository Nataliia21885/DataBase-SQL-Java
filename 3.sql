SELECT SUM(salary), sk.language
FROM DEVELOPERS_SKILLS AS dev_sk
INNER JOIN SKILLS AS sk
ON sk.id = dev_sk.skill_id
INNER JOIN DEVELOPERS AS dev
ON dev.id = dev_sk.developer_id
GROUP BY sk.language
HAVING sk.language = 'Java';
