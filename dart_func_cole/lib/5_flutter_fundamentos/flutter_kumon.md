# Widget
tudo no flutter é widget

todos os stateless ou statefull chamam o método build

onde existe uma widget tree, onde existem os elementos aninhados na árvore, assim ainda existe o render tree

widget tree(árvore dos widgets) imutável ->  o flutter marca como sujo e recria o widget, com o stateless
Element tree(Estrutura lógica) set state-> 
Render Tree(componente desenhado na tela)
## Ciclo de vida
 ordem de execução ou métodos

 stateless(chama) -> Construtor ->build

 StatefullWidget(chama) -> Construtor -> CreateState (CHAMA)-> Construtor -> initState (carregamento dos estados caso necessário, não pode ser async, tem de ser com o then)-> DidChangeDependencies (Abertura de eventos) -> build ->SetState(chama o build novamente, após marcar como dirty) -> 