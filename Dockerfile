# imagem base de cópia do Docker Hub
FROM jupyter/pyspark-notebook:ubuntu-20.04
# Colocar no diretório /app
# USER jovyan

WORKDIR /app

RUN cd /app && mkdir app && chmod 744 -R /app && chown -R jovyan:users /app

COPY . .

RUN cd /app && mkdir parquet && chmod 744 -R parquet/ && chown -R jovyan:users parquet/

RUN cd /app && mkdir parquet/clientes && chmod 744 -R parquet/clientes/ && chown -R jovyan:users parquet/clientes/

RUN cd /app && mkdir parquet/planos && chmod 744 -R parquet/planos/ && chown -R jovyan:users parquet/planos/

RUN cd /app && mkdir parquet/pagamentos && chmod 744 -R parquet/pagamentos/ && chown -R jovyan:users parquet/pagamentos/

RUN cd /app && mkdir parquet/pagamentosGerais && chmod 744 -R parquet/pagamentosGerais/ && chown -R jovyan:users parquet/pagamentosGerais/

RUN cd /app && mkdir csv && chmod 744 -R csv/ && chown -R jovyan:users csv/

RUN cd /app && mkdir csv/processados && chmod 744 -R csv/processados/ && chown -R jovyan:users csv/processados/

RUN cd /app

#CMD /bin/bash

# Expor a porta 8888
EXPOSE 8888
