:-dynamic 
have/1, % indica que temos um produto pronto pra usar
canProduce/1, % indica que podemos produzir o produto nos mesmos
canProduce/2, % indica que outro agente pode fazer certo produto
delivered/2. % indica que um produto foi entrega para um certo agente

% Conhecimento comum dos ingredientes necessarios para fazer um produto
requiredFor(coffee, water).
requiredFor(coffee, grounds).
requiredFor(espresso, coffee).
requiredFor(grounds, beans).

% Um agente pode fazer um produto se ele ja tem esse produto, ou se ele pode fazer todos os ingredientes
canMake(Product) :- have(Product).
canMake(Product) :- canProduce(Product),
forall(requiredFor(Product, Ingredient), canMake(Ingredient)).

% definindo que um produto pode ser entregue a qualquer outro agente
delivered(Product) :- delivered(_,Product).