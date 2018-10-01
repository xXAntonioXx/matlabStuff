function comparacion = Comparacion(tablaUno,tablaDos,Origen)
    %para el ejercicio la tabla uno corresponde a los benignos y la dos
    %para los malignos
    tamano=size(tablaUno);
    arregloRes=zeros(tamano(1),1);
    for c=1:tamano(1)
        if tablaUno(c,:)>tablaDos(c,:)
            arregloRes(c,1)=2;
        else
            arregloRes(c,1)=4;
        end
    end
    %concatenamos nuestros resultados con los originales
    columnas=Origen(:,10);
    auxComparacion=horzcat(arregloRes,columnas);
    comparacion=auxComparacion;
end