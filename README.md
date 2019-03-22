# banghash

Exemplo de uso:

### Gerando Hash + Salt da senha
```sh
# Carregamento módulo
source banghash.sh

read -p "Usuario: " user
read -p "Senha: " pass

# Gerando Hash com salt
hash=$(BANG "$pass")

# Enviando para Banco
echo "${user}:${hash}" >> bd.txt
```

### Verificar se senha bate com BD.

``` sh

```
