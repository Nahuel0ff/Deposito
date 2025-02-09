//Basicamente es un dado que podes elegir la cantidad de veces/dados que queres tirar y te va a dar un resultado del 1 al 6

program LanzarDado;

procedure dado(var num: integer);
begin
  num := random(6) + 1;
end;

var
  tiradas, i, num: integer;
begin
  Randomize;
  writeln('Ingrese el número de tiradas que desea realizar:');
  readln(tiradas);

  for i := 1 to tiradas do
  begin
    dado(num);
    writeln('El número obtenido es: ', num);
  end;
end.
