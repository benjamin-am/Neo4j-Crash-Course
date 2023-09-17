// Deleting Ja Morant
// need to delete relationships first
// DETACH keyword DETACHES all relationships, deletes them, then allows you to delete node
// MATCH (ja {name: "Ja Morant"}) 
// DETACH DELETE ja

// what if we just want to delete a relationship
// traded or retired?
MATCH (joel {name: "Joel Embiid"}) -[rel:PLAYS_FOR]-> (:TEAM)
DELETE rel
