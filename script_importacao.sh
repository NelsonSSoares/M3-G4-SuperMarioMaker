## COMANDO PARA ENTRAR NO TERMINAL DO CONTAINER DO DOCKER:
docker exec -it novo_container_mysql bash
## COMANDO PARA CRIAR A PASTA DENTRO DO CONTAINER DO DOCKER:
mkdir data

## -- FORA DO CONTAINER -- ABRIR UM TERMINAL NA PASTA DOS ARQUIVOS CSV NA MAQUINA
## EXEMPLO: cd C:\Users\blcrz\Desktop\Temporal Dataset from Super Mario Maker-20211017T195733Z-001\Temporal Dataset from Super Mario Maker
## COMANDOS QUE VÃO COPIAR OS ARQUIVOS CSVS DA MAQUINA PARA A PASTA data NO CONTAINER:

docker cp players.csv novo_container_mysql:/data

docker cp courses.csv novo_container_mysql:/data

docker cp course-meta.csv novo_container_mysql:/data

docker cp plays.csv novo_container_mysql:/data

docker cp clears.csv novo_container_mysql:/data

docker cp likes.csv novo_container_mysql:/data

docker cp records.csv novo_container_mysql:/data

## ENTRAR NOVAMENTE NO TERMINAL DO CONTAINER:
docker exec -it novo_container_mysql bash

## ENTRAR NO MYSQL (SE ESTIVER RODANDO LOCAL, FAZER A PARTIR DAQUI):
mysql -u root -p

## COMANDO PARA DAR PERMISSÃO DE IMPORTAR ARQUIVO
SET GLOBAL local_infile=1;

exit

## ENTRAR NOVAMENTE NO MYSQL COM A PERMISSAO DE IMPORTAR ARQUIVO
 mysql --local-infile=1 -u root -p

 use mario_maker;

## COMANDO PARA IMPORTAR OS CSVS (UM PARA CADA ARQUIVO) - COLOCAR CAMINHO DA PASTA DO ARQUIVO DO PC (SE ESTIVER LOCAL)
load data local infile 'data/players.csv' into table players fields terminated by '\t' enclosed by '"' lines terminated by '\n' (id, flag);

load data local infile 'data/courses.csv' into table courses fields terminated by '\t' enclosed by '"' lines terminated by '\n' (id, difficulty, gameStyle, maker, title, thumbnail, image, creation);

load data local infile 'data/course-meta.csv' into table courseMeta fields terminated by '\t' enclosed by '"' lines terminated by '\n' (catch, id, firstClear, tag, stars, players, tweets, clears, attempts, clearRate);

load data local infile 'data/plays.csv' into table plays fields terminated by '\t' enclosed by '"' lines terminated by '\n' (catch, id, player);

load data local infile 'data/clears.csv' into table clears fields terminated by '\t' enclosed by '"' lines terminated by '\n' (catch, id, player);

load data local infile 'data/likes.csv' into table likes fields terminated by '\t' enclosed by '"' lines terminated by '\n' (catch, id, player);

load data local infile 'data/records.csv' into table records fields terminated by '\t' enclosed by '"' lines terminated by '\n' (catch, id, player, timeRecord);

