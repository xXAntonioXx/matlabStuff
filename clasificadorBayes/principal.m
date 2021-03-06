MapBenigno = Train(:,10)==2; %aqui mapeamos los casos de tumor benigno
Benignos = Train(MapBenigno,:); %aqui filtramos los casos de tumor benigno

MapMaligno = Train(:,10)==4; %aqui mapeamos los casos de tumor maligno
Maligno = Train(MapMaligno,:); %aqui filtramos los casos de tumor maligno

%eliminamos la ultima columna
Benignos(:,10)=[];
Maligno(:,10)=[];

Apriori_B=Apriori(Casos,2,10);
Apriori_M=Apriori(Casos,4,10);
ClasificadorBenignos=Clasificador(Benignos,Casos);
ClasificadorMalignos=Clasificador(Maligno,Casos);

%pruebas
resultadoBenignos=Comprobacion(Apriori_B,Test,ClasificadorBenignos);
resultadoMalignos=Comprobacion(Apriori_M,Test,ClasificadorMalignos);

%resultado final
resultadosBayes=Comparacion(resultadoBenignos,resultadoMalignos,Test);

%porcentaje de acierto
acierto=Porcentaje_Acierto(resultadosBayes);

