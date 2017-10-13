with Ada.Text_IO;
with Ada.Integer_Text_IO;

use Ada.Text_IO;
use Ada.Integer_Text_IO; 

procedure cita is
    task A is
    entry citaConB(xb:out integer);
    entry citaConC(xc:in integer);
    end A;

    task body A is
    y1: integer;
    y2: integer;
    begin
        y1 := 4;
    loop
        select
                accept citaConB(xb:out integer) do
                    xb:= y1;
                end citaConB;
            or
                accept citaConC(xc:in integer) do
                    y2:= xc;
                    put(y2);
                end citaConC;
            or
                terminate;
        end select;
    end loop;
    end A;

    task B;
    task body B is
    z:integer;
    begin
        A.citaConB(Z);
        put(Z);
    end B;

    task C;
    task body C is
    z2:integer;
    begin
        z2 := 3;
        A.citaConC(z2);
    end C;

    begin
        null;
    end cita;