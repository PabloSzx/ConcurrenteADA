with Simple_IO, Ada.Numerics.Elementary_Functions;
procedure Root is
    use Simple_IO, Ada.Numerics.Elementary_Functions;
    X : Float;
begin
    Put("Enter a number :");
    Get(X);
    Put("The square root of asd "); Put(X);Put(" is ");
    Put(Sqrt(X));
    New_Line;
end Root;