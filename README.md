# conversao-distancia

## Criar o cluster k3d com o comando
`k3d cluster create meucluster --servers 1 --agents 2 -p "8080:30000@loadbalancer"`

## Apos criacao do cluster usar o comando abaixo para rodar o manifesto
`kubectl apply -f k8s/deployment.yml`
