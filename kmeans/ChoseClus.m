function [clus]=ChoseClus(asignacion)
    dimensiones=size(asignacion);
    vector=asignacion(1,1:dimensiones(2));
    clus=max(vector);
end