function[newCluster]=ClusterPromedio(datos,k)
    tamano = size(datos);
    newCluster=[k,tamano(2)];
    for c=1:k
        MapGroup = datos(:,tamano(2))==c;
        clusterGroup=datos(MapGroup,:);
        %clusterGroup
        nuevoCluster=crearCentroide2(clusterGroup);
        for c2=1:tamano(2)-1
            newCluster(c,c2)=nuevoCluster(1,c2);
        end
        newCluster(c,tamano(2))=c;
    end
end