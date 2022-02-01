Resumo do ocorrido: No "docker compose" a imagem traz ok (local e digitalocean) e
                    no kubernetes da Digital Ocean não aparece os arquivos de execução e informa falta de permissão

- Coloquei a duas imagens no docker hub:

zul9an9/pyspark-notebook:v4 e v5 (são bem identicas só mudei o usuário no diretório app para jovyan:users)

a v4 utilizei para fazer a subida da vm no docker-compose
     https://github.com/zul9an9/JupyterPysparkDockerCompose (Este funciona)

a v5 utilizei para fazer o deployment do kubernetes (utilizei esta imagem no docker e construi o container e funcionou 
     aparecendo oos diretórios)
     https://github.com/zul9an9/jupyterpysparkkube(veja neste diretório o erro em ErrorPyspark.PNG)

- No repositório do github

código do docker-compose: https://github.com/zul9an9/JupyterPysparkDockerCompose (Este funciona)
    - aparece no linux o diretório /app e seus subdiretórios e arquivos de execução

código do kubernetes:     https://github.com/zul9an9/jupyterpysparkkube
    - (veja neste diretório o erro em ErrorPyspark.PNG) e não aparece os arquivos para execução da imagem v5
    - Aparentemente é um erro de permissão.

- Veja desenhos: EstruturaBases.png e FluxoInformacao.png
  
  Em resumo a aplicação "Pagamentos.ipynb" constrói as bases para consulta 
      - planos de convênio - ler excel planilha planos.csv e transforma em parquet
      - clientes - ler de api de clientes e transforma em parquet
      - pagamentos - ler planilha excel pagamentos.csv e transforma em parquet juntando com pagamemntos mensais e gerais em parquet

  Em resumo a aplicação "PagamentosVenda.ipynb" disponibiliza o parquet para a interação e construção do SQL

  O Spark tem em sua instância a implementação de vários outros soluções de software como hive, mongodb e tb a solução de executar em várias partições o mm código e ele se resolve fazendo as ligações dos dados.

- Estágios na execução do spark:

  https://qastack.com.br/programming/37528047/how-are-stages-split-into-tasks-in-spark

  O Spark só executa um comando de fato no momento em que ele precisa dos dados para proseguir.


  











