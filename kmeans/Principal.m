k=4; %cantidad de clusters
datos = readtable('datos.csv');%leemos los datos
tamano=size(datos);
%datos(:,tamano(2))=[];%aqui puedes eliminar la ultima columna
%datos=table2array(datos);%aqui lo puedes convertir a una matriz

clusters = CrearCentroides(datos,k);%k=numero de clusters
analize=asignacion(clusters,datos);

clasificacion1=ChoseClus(analize);

datosArray = table2array(datos(:,1:4));

datosArray = [datosArray clasificacion1];

%ahora recrea los centroides en base a los primeros resultados
mapClus1=datosArray(:,5)==1;
primerCluster=datosArray(mapClus1,:);
mapClus2=datosArray(:,5)==2;
segundoCluster=datosArray(mapClus2,:);
mapClus3=datosArray(:,5)==3;
tercerCluster=datosArray(mapClus3,:);
mapClus4=datosArray(:,5)==4;
cuartoCluster=datosArray(mapClus4,:);
%ahora te falta generar nuevos clusters

