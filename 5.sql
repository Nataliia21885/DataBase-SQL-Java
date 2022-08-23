SELECT MIN(cost), pr.project_name
FROM PROJECTS AS pr
GROUP BY pr.project_name
ORDER BY MIN(cost) ASC
LIMIT 1;
