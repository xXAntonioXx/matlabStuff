k=3; %cantidad de clusters
datos = csvread('datos2.csv');%leemos los datos
tamano=size(datos);
datos(:,tamano(2))=[];%aqui puedes eliminar la ultima columna
%datos=table2array(datos);%aqui lo puedes convertir a una matriz

clusters = CrearCentroides(datos,k);%k=numero de clusters, se genera el primer cluster
analize=asignacion(clusters,datos);%%distancias a cada centroide en base a los clusters (se genera un vector de distancias para cada registro)

clasificacion1=ChoseClus(analize);%escogemos a cual centroide esta mas cerca el registro

datosArray = [datos clasificacion1];%concatenamos los datos con la nueva clasificacion

nuevoCluster=ClusterPromedio(datosArray,k);%en base a promedios volvemos a generar clusters
% if isequal(clusters,nuevoCluster)==0
%     k
% end

while isequal(clusters,nuevoCluster)==0
    k
%     nuevoCluster=ClusterPromedio(datosArray,k);
%     nuevoCluster
    datosArray(:,tamano(2))=[];
    analize=asignacion(nuevoCluster,datosArray);
    clasificacion1=ChoseClus(analize);
    datosArray = [datos clasificacion1];
    clusters=nuevoCluster;
    nuevoCluster=ClusterPromedio(datosArray,k);
end

