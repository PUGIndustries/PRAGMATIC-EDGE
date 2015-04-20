type Payoff
  id::Int
end

# Moves are owned by nodes and represent decisions for each player in the game.
type Move
  id::Int
  name::String
  payoffs::Array{Payoff,1}
end

# Nodes are owned by players and represent decision points for each of the players in the game. They
# have the ability to hold multiple moves which can result in multiple payoffs defined by the utility
# function of the player that owns the specific node.
type Node
  id::Int
  name::String
  moves::Array{Move,1}
end

# Players are the fundamental aspect of the game; they have decision points called nodes, and moves
# they can actually take at every node. Those moves will ultimately result in payoffs for that player
# defined by a utility function for that specific player.
type Player
  id::Int
  name::String
  nodes::Array{Node,1}
  payoff::Payoff
end

type Infoset
  id::Int
  name::String
  nodes::Array{Node,1}
end











