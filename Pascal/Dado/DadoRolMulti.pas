// Y en este se me ocurrio que en algun momento se iba a querer usar mas de un dado en las tiradas de rol
// Por lo que al usar dos vectores para almacenar tipo y cant de dados, podes tirar hasta un max de 10 dados

program LanzarDadoRol;

const
    maxdados = 10;

type
    vector = array [1..maxdados] of integer;

procedure dado(var num: integer; caras: integer);
begin
    num := random(caras) + 1;
end;

var
    totaltip, cantdados, tipo, tiradas, i, j, k, num, suma: integer;
    v, v2: vector;
begin
    Randomize;
    writeln('Ingrese la cantidad de tipos de dados que quiere usar (Ej: 2 para un dado de 4 y uno de 20): ');
    readln(totaltip);
    
    for i := 1 to totaltip do 
    begin
        writeln('Ingrese la cantidad de dados para el tipo ', i, ':');
        readln(v[i]);
        writeln('Ingrese el tipo de dado que va a usar (4,6,8,10,12,20...):');
        readln(v2[i]);
    end;
    
    writeln('Ingrese el número de tiradas que desea realizar: ');
    readln(tiradas);
    
    for i := 1 to tiradas do 
    begin
        suma := 0;
        writeln('Lanzada ', i, ':');
        
        for j := 1 to totaltip do 
        begin
            writeln('  Dados de ', v2[j], ' caras:');
            
            for k := 1 to v[j] do 
            begin
                dado(num, v2[j]);
                writeln('    Dado ', k, ': ', num);
                suma := suma + num;
            end;
        end;
        
        writeln('  Total de la tirada: ', suma);
    end;
end.
