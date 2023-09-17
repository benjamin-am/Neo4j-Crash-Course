CREATE (lebron:PLAYER:COACH:GENERAL_MANAGER {name: "LeBron James", height: 2.01})
// RETURN lebron
// Nodes can have multiple players

// CREATE NODE AND RELATIONSHIP
CREATE (:PLAYER) -[:PLAYS_FOR {salary: 34000000}]-> (:TEAM {name: "LA Lakers"})

MATCH (n) RETURN n

// Create relationship after Nodes are created
MATCH (lebron:PLAYER {name: "LeBron James"}), (lakers:TEAM {name: "LA Lakers"})
CREATE (lebron) -[:PLAYS_FOR {salary: 40000000}]-> (lakers)