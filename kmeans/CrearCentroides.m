function [clusters]=CrearCentroides(data,k)
    dimensiones = size(data); %tomamos las dimensiones de la tabla
    %data(:,dimensiones(2))=[]; %quitamos las clases y dejamos solamente los datos
    
    %data = table2array(data);%convertimos la tabla de datos que entra en una matriz
    
    %dataArray = table2array(data);%convertimos la tabla de datos que entra en una matriz
    minimo=min(data);%esto nos devuelve un vector con los valores minimos de cada columna
    maximo=max(data);%valores maximos de cada columna
    
    clusters=[k,dimensiones(2)+1];%inicializamos la tabla de clusters
    for v=1:k%este for recorre renglon por renglon de los clusters pensados
        for c=1:dimensiones(2)%este for recorre columna por columna
            numeroAleatorio=minimo(c)+rand(1,1)*(maximo(c)-minimo(c));%producimos un numero aleatorio entre el maximo y minimo de cada columna
            clusters(v,c)=numeroAleatorio;%agregamos este valor a la matriz de clusters(dentro de este for anidado se agregan a cada celda de cada renglon(o sea a las columnas de cada renglon)
        end
        clusters(v,dimensiones(2)+1)=v;
    end
end