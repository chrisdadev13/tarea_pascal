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
                      write('El rango de las notas debe estar entre 1 y 20');
                  end;
         end;
     avg:= sum / c;
     for i:=1 to c do
         begin
              if (grades[i] >= avg) then
                 begin
                      cnp:=cnp+1;
                 end;
         end;
     write('El promedio es: ', avg:2:2);
     write('La cantidad de notas sobre el promedio es ', cnp);
     readkey;
end.
