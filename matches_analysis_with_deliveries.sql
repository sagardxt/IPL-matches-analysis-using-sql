SELECT * FROM deliveries

SELECT * FROM matches

SELECT team1,team2,toss_winner
FROM matches


SELECT team1,team2,winner
FROM matches


SELECT winner,season,COUNT(win_by_runs) as winbyruns
FROM matches
GROUP BY winner,season


SELECT winner,player_of_match
FROM matches


SELECT winner,win_by_runs,season
FROM matches
WHERE win_by_runs = '0'
ORDER BY season


SELECT winner,win_by_wickets
FROM matches


SELECT season,date,winner
FROM matches
ORDER BY season


SELECT team1,team2,city,venue,date
FROM matches


SELECT team1,team2,COUNT(dl_applied) as dlapplied
FROM matches
WHERE dl_applied = '1'
GROUP BY team1,team2


SELECT toss_winner,toss_decision
FROM matches
WHERE toss_decision = 'bat'
GROUP BY toss_decision,toss_winner



SELECT toss_winner,toss_decision
FROM matches
WHERE toss_decision = 'field'
GROUP BY toss_decision,toss_winner

-----------------------------------------------------------------
SELECT * FROM deliveries


SELECT batting_team,batsman
FROM deliveries


SELECT batsman,total_runs
FROM deliveries
WHERE total_runs > 0


SELECT batting_team,COUNT(inning) as innings
FROM deliveries
GROUP BY batting_team

SELECT COUNT(over1) as overs,bowler
FROM deliveries
GROUP BY bowler
ORDER BY bowler


