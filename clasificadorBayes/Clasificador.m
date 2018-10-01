function [clas] = Clasificador(tabla,origen)
    sinRepetir=unique(origen);%se buscan los valores unicos
    dimensiones=size(sinRepetir);%este dimensiones es para la cantidad de valores sin repetir
    dimensionesCol=size(tabla);%este dimensiones es para la cantidad de columnas
    for z=1:dimensionesCol(2)%el bucle exterior es para revisar columna por columna
        for c=1:dimensiones(1)%el bucle interior es para revisar renglon por renglon
            MapAux=tabla(:,z)==sinRepetir(c,1);%buscar los renglon por renglon el valor de los sinRepetir asignado
            sinRepetir(c,z+1)=sum(MapAux);%guardar ese valor en la celda especificada 
        end
    end
    %hacer correccion de laplace
    dimensionesLP=size(sinRepetir);
    comprobar=(sum(sinRepetir(:,2)))+dimensionesLP(1);%sumatoria total de cada columna(que es constante en todas las columnas)
    comprobar
    sinRepetirLP=zeros(dimensionesLP(1),dimensionesLP(2));
    sinRepetirLP(:,1)=sinRepetir(:,1);
    for j=2:dimensionesLP(2)
        sinRepetirLP(:,j)=(sinRepetir(:,j)+1)/comprobar;
    end
    
%     LaPlace=sinRepetir(:,2:dimensionesCol(2)+1)+1;%al resultado de contar que es 'sinRepetir' se le agrega uno
%     LaPlace
%     clas=LaPlace/comprobar;
    clas=sinRepetirLP;
end