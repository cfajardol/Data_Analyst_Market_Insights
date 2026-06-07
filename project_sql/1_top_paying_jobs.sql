/*
Question: What are the top-paying Data Analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely.
- Focuses on job postings with specified salaries (remove nulls)
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employment opportunities
*/

SELECT jpf.job_title_short, jpf.job_title, cd.name AS company_name, 
jpf.salary_year_avg
FROM job_postings_fact jpf
LEFT JOIN company_dim cd ON jpf.company_id = cd.company_id
WHERE jpf.salary_year_avg IS NOT NULL AND
jpf.job_title_short = 'Data Analyst' AND
jpf.job_location = 'Anywhere'
ORDER BY jpf.salary_year_avg DESC
LIMIT 10;
