with Ada.Text_IO;
with Ada.Integer_Text_IO;

use Ada.Text_IO;
use Ada.Integer_Text_IO; 

procedure Fumadores is
    
    recursoEnMesa: Integer := 0;

    task mesa is
    entry fumador1;
    entry fumador2;
    entry fumador3;
    end mesa;
    task body mesa is
    begin
        loop
            select
                    accept fumador1 do
                        Put_Line("Fumador 1 tomó el tabaco y está fumando")
                        recursoEnMesa := 0;
                        delay 10.0;
                        Put_Line("Fumador 1 dejó de fumar");
                    end fumador1;
                or
                    accept fumador2 do
                        Put_Line("Fumador 3 tomó el tabaco y está fumando")
                        recursoEnMesa := 0;
                        delay 10.0;
                        Put_Line("Fumador 3 dejó de fumar");
                    end fumador2;
                or                
                    accept fumador3 do
                        Put_Line("Fumador 2 tomó el tabaco y está fumando")
                        recursoEnMesa := 0;
                        delay 10.0;
                        Put_Line("Fumador 2 dejó de fumar");
                    end fumador3;
            end select;
        end loop;
    end mesa;
    
    task fumador1;
    task body fumador1 is
    begin
        Put_Line("Fumador 1 esperando tabaco");
        suma := 0;
        Put_Line("Fila 1 Empieza");
        for i in 1..3
        loop
            suma := suma + (m(1, i) * v(i));
        end loop;
        r(1) := suma;
        print.fila1;
    end fila1;

    task fila2;

    task body fila2 is
    suma: Integer;
    begin
        suma := 0;
        Put_Line("Fila 2 Empieza");
        for i in 1..3
        loop
            suma := suma + (m(2, i) * v(i));
        end loop;
        r(2) := suma;
        print.fila2;
    end fila2;

    task fila3;
    task body fila3 is
    suma: Integer;
    begin
        suma := 0;
        Put_Line("Fila 3 Empieza");
        for i in 1..3
        loop
            suma := suma + (m(3, i) * v(i));
        end loop;
        r(3) := suma;
        print.fila3;
    end fila3;

    begin
        null;
    end Fumadores;