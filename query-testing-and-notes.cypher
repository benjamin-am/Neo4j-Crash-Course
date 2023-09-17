// () represents node
// MATCH (n) RETURN n results in all nodes and everything
// MATCH (n:PLAYER) 
// WHERE n.name = "LeBron James"
// RETURN n

// this is the same as the above query, but inside the node you can specify attributes instead of using a where clause
// MATCH(player:PLAYER {name: "LeBron James"})
// RETURN player
// you can specify multiple attributes in the query

// get all players not named Lebron James
// MATCH (player:PLAYER) 
// WHERE player.name <> "LeBron James"
// RETURN player
// syntax very similar to SQL

// we want to see all players taller than 2 metres
// MATCH (player:PLAYER)
// WHERE player.height >= 2
// RETURN player

// MATCH (player:PLAYER)
// WHERE player.height <= 2
// RETURN player

// players w/ BMI > 25
// weight/height^2
// MATCH (player:PLAYER)
// WHERE (player.weight / (player.height * player.height)) > 25
// RETURN player

// multiple conditions
// MATCH (player:PLAYER)
// WHERE player.weight >= 100 AND player.height < 2
// RETURN player

// Limit results
// MATCH (player:PLAYER) 
// WHERE player.height >= 2
// RETURN player
// LIMIT 5 

// Maybe we wanted next two players
// SKIP first 2, get next 2, limit to 2
// MATCH (player:PLAYER) 
// WHERE player.height >= 2
// RETURN player
// SKIP 2
// LIMIT 2

// Order by
// MATCH (player:PLAYER) 
// WHERE player.height >= 2
// RETURN player
// ORDER BY player.height DESC

// How to filter for multiple nodes at the same time
MATCH (player:PLAYER), (coach:COACH)
where player.height >=2
RETURN player, coach