-- Write query to get number of assignments for each state
SELECT state, COUNT(*) FROM assignments group by state;