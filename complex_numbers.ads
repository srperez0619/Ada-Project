with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
with Ada.Exceptions;
use Ada.Exceptions;
with Ada.Strings.Unbounded; 
use Ada.Strings.Unbounded;

package Complex_Numbers is
   x: Integer:= 0;
   y: Integer:= 0;
   
   --All relevant functions returning comlex numbers as strings
   function Addition(A1: in Integer; B1: in Integer; A2: in Integer; B2: in Integer) return Unbounded_String;
   function Subtraction(A1: in Integer; B1: in Integer; A2: in Integer; B2: in Integer) return Unbounded_String;
   function Multiplication(A1: in Integer; B1: in Integer; A2: in Integer; B2: in Integer) return Unbounded_String;
   function Division(A1: in Integer; B1: in Integer; A2: in Integer; B2: in Integer) return Unbounded_String;
end Complex_Numbers;
