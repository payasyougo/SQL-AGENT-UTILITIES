-- SQL Agent Activity queries
SELECT
	*
FROM msdb.dbo.sysjobactivity;

-- get jobs that are not scheduled
SELECT
	j.[name]
,	a.*
FROM msdb.dbo.sysjobactivity a
JOIN msdb.dbo.sysjobs j ON j.job_id = a.job_id
WHERE next_scheduled_run_date IS NULL;
