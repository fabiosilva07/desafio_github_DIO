PROJETO FINAL APLICAÇÂO WEB DIO

Executar script inicial para baixar e configurar algumas dependencias

Especificações do servidor

-Nodes swarm em minha maquina virtual: 192.168.0.3, 192.168.0.4 e 192.168.0.6
-Servidor NFS: 192.168.0.5
-Pasta Mapeada NFS: /data

Aplicação de banco usada. Utilizei do arquivo para criar uma imagem no docker hub com meu nome.
Assim criando a aplicação com a tabela já criada e corrigindo o problema de autenticação

-Imagem do banco: fabiosilva07/dbprojetodio

Necessario editar arquivo nginx.conf para adicionar os seus nodes SWARM para o balanceamento.



