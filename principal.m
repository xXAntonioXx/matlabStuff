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


MapBeniTest = Test(:,10)==2;
MapMaliTest = Test(:,10)==4;
MapMaligno = Train(:,10)==4; %aqui mapeamos los casos de tumor maligno

BenignoTest = Test(MapBeniTest,:); %aqui filtramos los casos de tumor maligno

MalignoTest = Test(MapMaliTest,:); 


%==================================================================================
%aqui vemos que tan efectivo es para una tabla con solo valores
%benignos
BayesBenignosTestBenigno=Comprobacion(Apriori_B,BenignoTest,ClasificadorBenignos);
BayesMalignosTestMaligno=Comprobacion(Apriori_M,BenignoTest,ClasificadorMalignos);

comparacionBenignosTest = Comparacion(BayesBenignosTestBenigno,BayesMalignosTestMaligno,BenignoTest);

aciertoBenigno=Porcentaje_Acierto(comparacionBenignosTest);

%================================================================================
BayesBenignosTestBenigno2=Comprobacion(Apriori_B,MalignoTest,ClasificadorBenignos);
BayesMalignosTestMaligno2=Comprobacion(Apriori_M,MalignoTest,ClasificadorMalignos);

comparacionMalignosTest = Comparacion(BayesBenignosTestBenigno,BayesMalignosTestMaligno,BenignoTest);

aciertoMaligno=Porcentaje_Acierto(comparacionMalignosTest);