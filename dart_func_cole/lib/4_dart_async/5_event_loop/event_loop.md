# Funcionamento
princípio de funcionamento em filas, existindo 2 tipos:
## Filas de evento
- first in first out
- sempre será uma execuçao assincrona
- tem baixa prioridade de execução
- executa os processos parados(Leitura, http, banco de dados)

## Fila de microTask
- first in first out
- sempre será uma execuçao assincrona
- tem alta prioridade de execução
- deve ser uma execução rápida