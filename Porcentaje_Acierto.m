function porcentaje = Porcentaje_Acierto(tabla)
    tamano=size(tabla);
    mapAcertados=tabla(:,1)==tabla(:,2);
    porcentaje=sum(mapAcertados)/tamano(1);
end