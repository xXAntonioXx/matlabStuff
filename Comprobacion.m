function Comprobacion_Tabala = Comprobacion(Apriori,tabla,clasificador)
    tabla_tamano=size(tabla);
    temporal=zeros(tabla_tamano(1),1);
    for h=1:tabla_tamano(1)
        Columnas=tabla(h,1:9);
        Prob=Apriori;
        for c=1:length(Columnas)
            probabilidad_De_Valor=clasificador(Columnas(c),c+1);
            Prob=Prob*probabilidad_De_Valor;
        end
        temporal(h,1)=Prob;
        Prob
    end
    Comprobacion_Tabala=temporal;
end