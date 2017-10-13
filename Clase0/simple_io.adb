with Ada.Text_IO, Ada.Float_Text_IO;
package body Simple_IO is
  procedure Get (F : out Float) is
  begin
    Ada.Float_Text_IO.Get(F);
  end Get;
  procedure Put (F : in  Float) is
  begin
    Ada.Float_Text_IO.Put(F,Exp=>0);
  end Put;
  procedure Put (S : in  String) is
  begin
    Ada.Text_IO.Put(S);
  end Put;
  procedure New_Line is
  begin
    Ada.Text_IO.New_Line;
  end New_Line;
end Simple_IO;