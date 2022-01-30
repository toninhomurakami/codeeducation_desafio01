# codeeducation_desafio01
Desafio 01 para Docker, do curso Full Stack da Code Education

1) O arquivo Dockerfile foi constituído de 2 etapas, a de compilação, e a publicação em uma imagem minimalista. 
A base do estágio de compilação usa imagem docker com *GoLang alpine*.
A base do estágio de produção da imagem utiliza imagem docker minimalista, do *hello-world*.
Para otimizar a compilação do aplicativo em Go, foram utilizados parâmetros para retirar a tabela de simbolos e informações de debug:
Instruções para compilar:
- go build -o hello-world -ldflags="-s -w" hello-world.go

Src: https://stackoverflow.com/questions/45003259/passing-an-optimization-flag-to-a-go-compiler

Dessa forma, o fonte da aplicação Go é copiado para a imagem base de compilação, gerado o binário em si e copiado para a imagem base de produção, constituindo seu resultado final.

2) Compilar docker [./]:
- docker build . -t toninhomurakami/codeeducation:latest -f Dockerfile

Constatando tamanho da imagem menor que 2Mb:
- docker images
REPOSITORY                      TAG       IMAGE ID       CREATED          SIZE
toninhomurakami/codeeducation   latest    22fcc44afa21   22 minutes ago   1.42MB

3) Rodar o docker e constatar resultado esperado [./]:
- docker run toninhomurakami/codeeducation
Code.education Rocks!

4) Publicar imagem no Docker Hub [./]:
- docker tag toninhomurakami/codeeducation:latest toninhomurakami:codeeducation
- docker push toninhomurakami/codeeducation


5) Executando em outra máquina
- docker run toninhomurakami/codeeducation

Unable to find image 'toninhomurakami/codeeducation:latest' locally
latest: Pulling from toninhomurakami/codeeducation
2db29710123e: Already exists
e7e38d310a71: Already exists
24550385c316: Already exists
Status: Downloaded newer image for toninhomurakami/codeeducation:latest
Code.education Rocks!