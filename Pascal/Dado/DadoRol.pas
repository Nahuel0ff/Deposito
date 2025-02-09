//Este se me ocurrio una vez que subi el otro y dije... No hay un solo tipo de dado... Si quiero uno que no sea de 6 caras?

program LanzarDadoRol;

procedure dado(var num: integer; caras: integer);
begin
    num := random(caras) + 1;
end;

var
    cantdados,tipo,tiradas, i, j, num, suma: integer;
begin
    Randomize;
    writeln('Ingrese la cantidad de dados que quiere usar: ');
    readln(cantdados);
    writeln('Ingrese el tipo de dado que va a usar (4,6,8,10,12,20...):');
    readln(tipo);
    writeln('Ingrese el número de tiradas que desea realizar: ');
    readln(tiradas);

    for i := 1 to tiradas do begin
        suma:=0;
        writeln('Lanzada ', i,':');
        for j:=1 to cantdados do begin
            dado(num,tipo);
            writeln(' Dado',j,' :',num);
            suma:= suma + num;
        end;
    writeln(' Total de la tirada: ',suma);
    end;
end.
