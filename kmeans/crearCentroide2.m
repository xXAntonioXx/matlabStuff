function[newCluster] = crearCentroide2(entrada)
    dimensiones=size(entrada);%tomamos las medidas de los datos concatenados con su cluster asignado
    promedios=[1,dimensiones(2)-1];%vector pequeño que regresa el recalculo de posicion del centroide en base al promedio de los grupos
    for c=1:dimensiones(2)-1 %por cada columna calcula el promedio y lo agrega a promedios
        promedios(1,c)=sum(entrada(:,c))/dimensiones(1);
    end
    newCluster=promedios;
end