with Ada.Text_IO;
with Ada.Integer_Text_IO;

use Ada.Text_IO;
use Ada.Integer_Text_IO; 

procedure Example is
    task A;
    task B;
    task body A is
    begin
        put("Hola soy task A");
    end A;

    task body B is
    begin
        put("Hola soy task B");
    end B;

    begin
        null;
    end Example;