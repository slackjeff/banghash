######################################################################
# Módulo para gerar Hash + Salt. Ideal para logins que utilizam o
# Texto plano para armazenar senhas.
######################################################################

#=========VARIÁVEIS
salt_size='8' # Tamanho que terá o salt
delimiter=':'

#=========FUNÇOES

# Função para gerar a hash com salt
# de acordo com o argumento passado
BANG()
{
    PASSWORD="$1"

    # Nulo cai fora
    [[ -z "$PASSWORD" ]] && { echo "The input parameter is null."; return 1 ;}
    # Gerando sal randômico
    SALT="$(head /dev/urandom | tr -dc "[:graph:] [:alnum:]" | head -c "$salt_size"; echo)"
    # Printa pra noix
    printf "${SALT}${delimiter}"
    printf "${PASSWORD}${SALT}" | sha256sum | cut -d ' ' -f 1
}
