with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
with Complex_Numbers;
use Complex_Numbers;
with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;

procedure Main is
   choice: Integer:= 0;
   input1_x: Integer:= 0;
   input2_x: Integer:= 0;
   input1_y: Integer:= 0;
   input2_y: Integer:= 0;
   r: Unbounded_String;

begin
   Put_Line("For a complex number, the number is in the form of x + yi."); --Gets the initial values
   Put("Enter a value for x1: ");
   Get(input1_x);
   Put("Enter a value for y1: ");
   Get(input1_y);
   Put_Line(" ");
   Put("Enter a value for x2: ");
   Get(input2_x);
   Put("Enter a value for y2: ");
   Get(input2_y);

   loop --Loops menu
      Put_Line("Calculator Options");
      Put_Line("1 - Addition");
      Put_Line("2 - Subtraction");
      Put_Line("3 - Multiplication");
      Put_Line("4 - Division");
      Put_Line("5 - Change Values");
      Put_Line("6 - End Calculator");
      Put("Select an option: ");
      Get(choice);

      if choice = 1 then  --Calls addition function
         r:= Addition(input1_x, input1_y, input2_x, input2_y);
         Put("Sum = ");
         Put_Line(To_String(r));
         Put_Line(" ");
      end if;
      if choice = 2 then  --Calls subtraction function
         r:= Subtraction(input1_x, input1_y, input2_x, input2_y);
         Put("Difference = ");
         Put_Line(To_String(r));
         Put_Line(" ");
      end if;
      if choice = 3 then  --Calls multiplication function
         r:= Multiplication(input1_x, input1_y, input2_x, input2_y);
         Put("Product = ");
         Put_Line(To_String(r));
         Put_Line(" ");
      end if;
      if choice = 4 then  --Calls division function
         r:= Division(input1_x, input1_y, input2_x, input2_y);
         Put("Quotient = ");
         Put_Line(To_String(r));
         Put_Line(" ");
      end if;
      if choice = 5 then  --Allows the user to re-enter information
         Put_Line("For a complex number, the number is in the form of x + yi.");
         Put("Enter a value for x1: ");
         Get(input1_x);
         Put("Enter a value for y1: ");
         Get(input1_y);
         Put_Line(" ");
         Put("Enter a value for x2: ");
         Get(input2_x);
         Put("Enter a value for y2: ");
         Get(input2_y);
      end if;
      if choice < 1 then --Invalid option
         Put_Line("Method Not Found in Current Directory...Please Update and Restart The Calculator.");
         exit;
      end if;
      if choice > 5 then  --Exit Calculator
         Put_Line("Shutting down...");
         exit;
      end if;
   end loop;

end Main;
