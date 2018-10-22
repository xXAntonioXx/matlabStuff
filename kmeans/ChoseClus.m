function [clus]=ChoseClus(asignacion)
    dimensiones=size(asignacion);
    clus=[dimensiones(1),1];
    for c=1:dimensiones(1)
        vector=asignacion(c,1:dimensiones(2));
        aux=min(vector);
        maping=asignacion(c,:)==aux;
        indice=find(maping==1);
        clus(c,1)=indice;
    end
    clus(:,2)=[];
%     vector=asignacion(c,1:dimensiones(2));
%         vector
%         aux=min(vector);
end