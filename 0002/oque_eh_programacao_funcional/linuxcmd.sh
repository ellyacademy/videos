echo "--------- Lendo arquivo"
cat file_with_list

echo "--------- Filtrando dados"
cat file_with_list | grep Bruce

echo "--------- Unificando registros"
cat file_with_list | grep Bruce | uniq
