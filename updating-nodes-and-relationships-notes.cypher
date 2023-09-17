// to update, first find the node
// to query using an id you have to say WHERE
MATCH (anthony:PLAYER)
WHERE ID(anthony) = 38
SET anthony.name ="Anthony Davis"
RETURN anthony

// Multiple sets
MATCH (lebron:PLAYER) 
WHERE ID(lebron) = 37
set lebron.height = 2.02, lebron.age = 36
RETURN lebron

// Set label
MATCH (lebron:PLAYER) 
WHERE ID(lebron) = 37
SET lebron:REF
RETURN lebron

MATCH(lebron {name: "LeBron James"}) -[contract:PLAYS_FOR]-> (team:TEAM) 
SET contract.salary = 60000000
RETURN lebron, team

// Remove labels and info
MATCH(lebron {name: "LeBron James"}) 
REMOVE lebron.age
RETURN lebron

MATCH(lebron {name: "LeBron James"}) 
REMOVE lebron:REF
RETURN lebron
