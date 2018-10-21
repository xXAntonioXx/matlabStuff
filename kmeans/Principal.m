datos = readtable('datos.csv');%leemos los datos
clusters = CrearCentroides(datos,4);%k=numero de clusters
analize=asignacion(clusters,datos);