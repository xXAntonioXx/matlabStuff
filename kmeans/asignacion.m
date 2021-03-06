function [resultado]=asignacion(clusters,datos)%este metodo nos regresa las distancias de cada registro a cada centroide encontrado
    dimensionesClusters=size(clusters);%tomamos dimensiones de las matrices de datos que entran
    dimensionesDatos=size(datos);%igual que arriba xD
    
    %datos(:,dimensionesDatos(2))=[];%quitamos la ultima columna de los datos
    %datos = table2array(datos);%convertimos la tabla a matriz para poder hacer operaciones
    
    distancia=0;%inicializamos una variable auxiliar
    distanciasss=[1,dimensionesClusters(2)-1];%arreglo que contiene las distancias de manera temporal para despues ser agregadas a una matriz mas grande
    
    resultado=[];%a esta matriz se le estaran agregando las distanciasss
    for y=1:dimensionesDatos(1)%para cada registro
        for x=1:dimensionesClusters(1)%para cada cluster
            for c=1:dimensionesClusters(2)-1%sumatoria de distancias para cada cluster
                distancia=distancia+(datos(y,c)-clusters(x,c))^2;
            end
            distanciasss(1,x)=distancia;%se acumulan las distancias del registro aqui
            
            distancia=0;
        end
        %distanciasss
        resultado=[resultado;distanciasss];
        distanciasss(1,:)=0;
    end
    
    %resultado=distanciasss;
end