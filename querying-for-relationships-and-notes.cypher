// one directional, a player has a relationship of PLAYS_FOR with a team, not the other way around
// that's why arrow points the direction
// have to specify direction
// MATCH (player:PLAYER) -[:PLAYS_FOR]-> (team:TEAM)
// WHERE team.name = "LA Lakers"
// RETURN player

// OR
MATCH (player:PLAYER) -[:PLAYS_FOR]-> (team:TEAM)
WHERE team.name = "LA Lakers" OR team.name = "Dallas Mavericks"
RETURN player

// if you look into the relationship itself, you can see it has a property called salary
// nodes AND relationships can have properties
// write a query for players w/ a salary of > 35 mil
MATCH (player:PLAYER) -[contract:PLAYS_FOR]-> (team:TEAM)
WHERE contract.salary >= 35000000
RETURN player

// get all of LeBron's teammates that make more than 40 mil
MATCH (player:PLAYER) -[contract:PLAYS_FOR]-> (team:TEAM) 
WHERE contract.salary >= 40000000
// you can have multiple matches
MATCH (lebron:PLAYER {name: "LeBron James"}) -[:TEAMMATES]-> (teammate:PLAYER)
MATCH (teammate) -[contract:PLAYS_FOR]-> (team:TEAM)
WHERE contract.salary >= 35000000
RETURN teammate

// get a specific player, collect all PLAYED_AGAINST, and count how many they had to count the games played
// Aggregation
MATCH (player:PLAYER) -[gamePlayed:PLAYED_AGAINST]-> (:TEAM)
RETURN player.name, COUNT(gamePlayed)
ORDER BY COUNT(gamePlayed)

MATCH (player:PLAYER) -[gamePlayed:PLAYED_AGAINST]-> (:TEAM)
RETURN player.name, AVG(gamePlayed.points) as PPG
ORDER BY PPG DESC
LIMIT 1
// also have SUM, MAX, MIN, etc basic aggregation

