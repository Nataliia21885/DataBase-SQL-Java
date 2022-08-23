SELECT dev_pr.project_id, pr.project_name, AVG(salary), MIN(cost)
FROM DEVELOPERS_PROJECTS AS dev_pr
INNER JOIN PROJECTS AS pr
ON pr.id = dev_pr.project_id
INNER JOIN DEVELOPERS AS dev
ON dev.id = dev_pr.developer_id
GROUP BY dev_pr.project_id, pr.project_name
ORDER BY MIN(cost), AVG(salary)
LIMIT 1;
