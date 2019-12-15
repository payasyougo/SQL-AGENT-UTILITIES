-- SQL Agent Activity queries
SELECT
	*
FROM msdb.dbo.sysjobactivity;

-- get jobs that are not scheduled
SELECT
	*
FROM msdb.dbo.sysjobactivity
WHERE next_scheduled_run_date IS NULL;
