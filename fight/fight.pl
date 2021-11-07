:-dynamic 
has/1, % indicates that we have a weapon ready for use.
canAtack/2, % indicates we can atack someone else.
canDefend/1, % indicates that we can defend ourselves.
canDodge/1. % indicates that we can dodge an atack.
nrOfLifes/1. % indicates how much life an agent has.
dead/1. % indicates we can kill someone else.

% Common knowledge of itens that are needed for moves
requiredFor(atack, weapon).
requiredFor(defense, shield).
requiredFor(dodge, boot).
% Common knowledge that to kill other agent, his life must be zero
requiredFor(dead, nrOfLifes(0)).
% Common knowledge of itens that are needed for making a flag.
requiredFor(flag, pieceOne).
requiredFor(flag, pieceTwo).
requiredFor(flag, pieceThree).

% A machine can make a product if it has the product or it can make all ingredients.
canCraft(Product) :- has(Product).
forall(requiredFor(Product, Ingredient)).