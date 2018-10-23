function [clus]=ChoseClus(asignacion)%escogemos que centroide es el mas cercano
    dimensiones=size(asignacion);%tamaño de los registros pero tomadas de la matriz que contiene las distancias
    clus=[dimensiones(1),1];%inicializamos matriz donde se asignara la distancia mas corta
    for c=1:dimensiones(1)%este for basicamente va recorriendo toda la matriz de distancias filtrando al mas pequeño
        vector=asignacion(c,1:dimensiones(2));%tomamos el renglon de distancia
        aux=min(vector);%encontramos el minimo
        maping=asignacion(c,:)==aux;
        indice=find(maping==1);%junto con la variable de maping enocntramos el indice donde se encuentra el dato de distancia y con esto determinamos que centroide es
        clus(c,1)=indice;%lo agregamos a la columna de resultado
    end
    clus(:,2)=[];

end