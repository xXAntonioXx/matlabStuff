function [resultado]=asignacion(clusters,datos)
    dimensionesClusters=size(clusters);
    dimensionesDatos=size(datos);
    
    datos(:,dimensionesDatos(2))=[];
    datos = table2array(datos);
    
    distancia=0;
    distanciasss=[1,dimensionesClusters(2)-1];
    
    resultado=[];
    for y=1:dimensionesDatos(1)
        for x=1:dimensionesClusters(1)
            for c=1:dimensionesClusters(2)-1
                distancia=distancia+(datos(y,c)-clusters(x,c))^2;
            end
            distanciasss(1,x)=distancia;
            
            distancia=0;
        end
        %distanciasss
        resultado=[resultado;distanciasss];
        distanciasss(1,:)=0;
    end
    
    %resultado=distanciasss;
end