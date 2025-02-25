program ruleta;

const
max = 6;

type

    rango = 1..max;

    vector = array [rango] of string;

procedure preparar(var v:vector);
var
i:integer;
begin
for i:= 1 to max do
    v[i]:='Vacio';
end;

procedure cargar(var v: vector; cant: integer);
var
    num, cont: integer;
begin
    cont := 0;
    while (cant > cont) do begin
        num := random(max) + 1;
        if (v[num] <> 'Bala') then begin
            v[num] := 'Bala';
            cont := cont + 1;
        end;
    end;
end;

procedure disp(v: vector);
var
    ok: boolean;
    i: integer;
    palabra: string;
begin
    ok := true;
    i := 1;
    while (ok) AND (i <= max) do begin
        if (v[i] = 'Bala') then begin
            writeln('Te disparaste');
            ok := false;
        end
        else begin
            writeln('Te salvaste');
            writeln('¿Otra ronda? ¿SI o NO?');
            readln(palabra);
            if (palabra = 'SI') then
                i := i + 1
            else
                ok := false;
        end;
    end;
end;

var
    v: vector;
    cant:integer;
begin
    preparar(v);
    Randomize;
    writeln('Ingrese la cantidad de balas a colocar (1-', max, ')');
    readln(cant);
    if (cant < 1) or (cant > max) then begin
        writeln('Cantidad inválida. Debe ser entre 1 y ', max);
        exit;
    end;
    cargar(v, cant);
    disp(v);
end.
