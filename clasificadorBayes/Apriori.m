function [prob] = Apriori(tabla,valor,columna)
    MapAux=tabla(:,columna)==valor;
    total=size(tabla);
    prob=(sum(MapAux))/total(1);
end