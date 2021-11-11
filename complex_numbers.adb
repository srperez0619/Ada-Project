with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; --Creates an unbounded string
use Ada.Strings.Unbounded;

package body Complex_Numbers is
   function Addition(A1: in Integer; B1: in Integer; A2: in Integer; B2: in Integer) return Unbounded_String is --Function adds two complex numbers
      a_results: Integer:= 0;
      b_results: Integer:= 0;
      results: Unbounded_String; 
      a_string: Unbounded_String;
      b_string: Unbounded_String;
      --Creates string instances of important data
   begin
      a_results:= A1 + A2; --Adds the two x values together
      a_string:= To_Unbounded_String(Integer'Image(a_results));
      b_results:= B1 + B2; --Adds the two y values together
      b_string:= To_Unbounded_String(Integer'Image(b_results));
      
      results:= a_string & " + " & b_string & "i"; --Returns the complex number in the form of a string
      return results;
   end Addition;
   
   function Subtraction(A1: in Integer; B1: in Integer; A2: in Integer; B2: in Integer) return Unbounded_String is --Subtracts the complex number
      a_results: Integer:= 0;
      b_results: Integer:= 0;
      results: Unbounded_String;
      a_string: Unbounded_String;
      b_string: Unbounded_String;
      --Creates string instances of important variables
   begin
      a_results:= A1 - A2; --Subtracts the two x values
      a_string:= To_Unbounded_String(Integer'Image(a_results));
      b_results:= B1 - B2; --Subtracts the two y values
      b_string:= To_Unbounded_String(Integer'Image(b_results));
      
      results:= a_string & " - " & b_string & "i"; --Returns the complex number in the form of a string
      return results;
   end Subtraction;
   
   function Multiplication(A1: in Integer; B1: in Integer; A2: in Integer; B2: in Integer) return Unbounded_String is  -- Multiplies two complex numbers
      a_results: Integer:= 0;
      b_results: Integer:= 0;
      product: Integer:= 0;
      results: Unbounded_String;
      a_string: Unbounded_String;
      b_string: Unbounded_String;
      --Creates string instances of important values
   begin
      a_results:= (A1 * A2) - (B1 * B2);                        --The formula for multiplying two comples numbers is 
      a_string:= To_Unbounded_String(Integer'Image(a_results)); --for two complex numbers a + bi and x +yi is
      b_results:= (A1 * B2) + (B1 * A2);                        --(ax - by) + i(ay +bx)
      b_string:= To_Unbounded_String(Integer'Image(b_results));
      
      results:= a_string & " + " & b_string & "i"; --Returns the complex number after multiplying
      return results;
   end Multiplication;
   
   function Division(A1: in Integer; B1: in Integer; A2: in Integer; B2: in Integer) return Unbounded_String is --Divides two complex numbers
      numerator1: Integer:= 0;
      numerator2: Integer:= 0;
      denominator: Integer:= 0;
      results: Unbounded_String;
      n1_string: Unbounded_String;
      n2_string: Unbounded_String;
      denominator_string: Unbounded_String;
      --Creates string instances of important values
   begin
      numerator1:= (A1 * A2) + (B1 * B2);                                --The formula for dividing complex numbers for 
      n1_string:= To_Unbounded_String(Integer'Image(numerator1));        --two complex numbers a +bi and x + yi is
      numerator2:= (A2 * B1) - (A1 * B2);                                --((ax +by) - i(bx -ay))/(a^2 + b^2)
      n2_string:= To_Unbounded_String(Integer'Image(numerator2));
      denominator:= (A2*A2) + (B2*B2);
      denominator_string:= To_Unbounded_String(Integer'Image(denominator));
      
      results:= "(" & n1_string & " + " & n2_string & "i) / " & denominator_string; --Returns the complex number after division
      return results;
   end Division;
end Complex_numbers;
