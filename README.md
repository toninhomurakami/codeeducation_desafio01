# codeeducation_desafio01
Desafio 01 para Docker, do curso Full Stack da Code Education

1) Aplicativo GO:
Para compilar, use [go/src]:
- go build -o hello-world -ldflags="-s -w" hello-world.go

Com os parâmetros acima, indicamos ao compilador que otmize o tamanho do binário, retirando a tabela de simbolos e informações de debug.
Src: https://stackoverflow.com/questions/45003259/passing-an-optimization-flag-to-a-go-compiler

2) Compilar docker [./]:
- docker build . -t toninhomurakami/codeeducation:latest -f Dockerfile

Constatando tamanho da imagem menor que 2Mb:
- docker images
REPOSITORY                      TAG       IMAGE ID       CREATED          SIZE
toninhomurakami/codeeducation   latest    0ecb20012c30   20 minutes ago   1.45MB

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