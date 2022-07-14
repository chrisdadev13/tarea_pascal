program average_grades;
uses crt;

var
   c, i, sum, cnp: integer;
   avg: real;
   grades: array[1..20] of integer;

begin
     write('Cantidad de notas: ');
     read(c);
     cnp:=0;
     for i:= 1 to c do
         begin
              write('Nota(',i,'=');
              read(grades[i]);
              if ((grades[i] >= 1) and (grades[i] <= 20)) then
                 begin
                      sum:= sum + grades[i];
                 end
              else
                  begin
                     while (grades[i] > 20) or (grades[i] < 1) do
                           begin
                             writeln('Mi loco la nota no debe ser mayor a 20 o menor a 1');
                             write('Nota(',i,'=');
                             read(grades[i]);
                           end;
                  end;
         end;
     avg:= sum / c;
     write('El promedio es: ', avg:2:2);
     readkey;
end.
