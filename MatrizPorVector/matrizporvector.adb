with Ada.Text_IO;
with Ada.Integer_Text_IO;

use Ada.Text_IO;
use Ada.Integer_Text_IO; 

procedure MatrizPorVector is
    type Matriz is array(1..3, 1..3) of Integer;
    m : Matriz := 
    ((1, 2, 3),
        (3, 2, 9),
        (8, 2, 4));
    type Vector is array(1..3) of Integer;
    v : Vector := (2, 3, 4);
    r : Vector;  

    task print is
    entry fila1;
    entry fila2;
    entry fila3;
    end print;
    task body print is
    listo: Integer := 0;
    begin
    loop
        select
                accept fila1 do
                    listo := listo + 1;
                    Put_Line("Fila 1 Lista");
                end fila1;
            or
                accept fila2 do
                    listo := listo + 1;
                    Put_Line("Fila 2 Lista");
                end fila2;
            or                
                accept fila3 do
                    listo := listo + 1;
                    Put_Line("Fila 3 Lista");
                end fila3;
        end select;
        exit when listo = 3;
    end loop;
    Put_Line("");
    for i in 1..3
    loop
        Put(r(i));
    end loop;
    end print;
    
    task fila1;
    task body fila1 is
    suma: Integer;
    begin
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
    end MatrizPorVector;