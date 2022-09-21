import 'package:lab3_tutorial1/lab3_tutorial1.dart' as lab3_tutorial1;
import 'dart:math';
void main() {
  //LOOPS
  //As per name suggests, loop is running certain code for more than one time.
  //If we want to repeat certain actions, we can use loops.

  //WHILE LOOPS
  //In while loop, we provide a boolean condition in the beginning
  //the code written in while block will run as long as the condition is true
  //Syntax of while loop:
  // while(condition){
  //   //loop code
  // }
  //On each iteration, the condition is checked first (even for the first time)
  //If condition is false in first check, the while loop is not executed at all
  //If condition is false in later iteration, it will terminate the while loop
  //If condition is true, the loop executes and continues next iteration
  // while (true) {
  //   print('This is infinite while loop');
  // }
  //output: This is infinite while loop for infinite time
  //This is called infinite loop because the condition is itself true
  //for each iteration, condition result in true and will keep on executing the loop
  // var sum = 1;
  // while (sum < 10) {
  //   sum += 4;
  //   print(sum);
  // }
  //output:
  // 5
  // 9
  // 13
  //In first iteration, sum = 1 and (sum < 10) => true
  //it adds 4 to sum so sum = 5 and prints it
  //In second iteration, sum = 5 and (sum < 10) =>true
  //it adds 4 to sum so sum = 9 and prints it
  //In third iteration, sum = 9 and (sum < 10) =>true
  //it adds 4 to sum so sum = 13 and prints it
  //In fourth iteration, sum = 13 and (sum < 10) =>false
  //it exits loop

  //DO-WHILE LOOPS
  //do-while loops are variant of while loop in which the condition is evaluated at the end instead of beginning.
  //So do-while loop is executed at least one time even when the condition results in false in first check
  //Syntax of do-while loop is:
  // do {
  //   //loop code
  // } while (condition);
  //In first iteration, the body of loop runs and then the condition is checked
  //If condition results in false, the control goes out of loop
  //If condition results in true, the loop is executed again
  //The above example of while loop in do-while:
  // var sum = 1;
  // do {
  //   sum += 4;
  //   print(sum);
  // } while (sum < 10);
  //output:
  // 5
  // 9
  // 13
  //In first iteration, add 4 to sum, so sum = 5 and print it
  //check condition sum < 10 => true, continue to next iteration
  //In second iteration, add 4 to sum, so sum = 9 and print it
  //check condition sum < 10 => true, continue to next iteration
  //In third iteration, add 4 to sum, so sum = 13 and print it
  //check condition sum < 10 =>false, exit the loop

  //COMPARING WHILE AND DO-WHILE LOOPS
  //While loop and do-while loops are not always giving same output even for same loop body
  //this is mainly due to while loop checking the condition first and do-while loop checking the condition at last
  // var sum = 11;
  // while (sum < 10) {
  //   sum += 4;
  //   print(sum);
  // }
  //output:
  //In while loop, the condition is false in first check and never enters the loop
  // var sum = 11;
  // do {
  //   sum += 4;
  //   print(sum);
  // } while (sum < 10);
  //output: 15
  //In do-while loop, the condition is checked at last and so, at leat one time the loop runs

  //BREAKING OUT OF A LOOP
  // var sum = 1;
  // while(true)
  // {
  //   sum += 4;
  //   if(sum > 10)
  //     break;
  // }
  // print(sum); output:13 //break keyword will stop execution at sum value 13

  //A random interlude
  // final number=Random();
  // while(number.nextInt(6) + 1 != 6)
  // {
  //   print("It's not a six");
  // }
  //NextInt function give number between 0 to n - 1

  //FOR LOOP
  // for(int i = 0; i < 6; i++)
  //    print(i);
  //output:1 2 3 4 5 //for loop iterate until given condition(i<6) is true

  //CONTINUE KEYWORD
  // for(int i = 0; i < 5; i++)
  // {
  //   if(i == 3)
  //       continue;
  //   print(i);
  // }     output:0 1 2 4  //continue keyword will skip iteration when value of i==3

  //4. For-in loop
  // const str = "Hello World";
  // for(var s in str.runes)
  //   print(String.fromCharCode(s));  output:H e l l o W o r l d 
  // runes is a collection of all the code points in the string
  // fromCharCode is used to convert the code point integer into a string

  //5. For-each loop
  // const numbers = [1, 2, 3, 4, 5, 6];
  // numbers.forEach((number) => print(number));  //output:1 2 3 4 5 6

  ///Mini-exercises
  // 1.
  // var counter = 0;
  // while(counter < 10)
  // {
  //   print("counter is $counter");
  //   counter++;
  // }

  //2.
  // for(int i = 1; i <= 10; i++)
  // {
  //   print("The square if $i is ${i * i}");
  // }

  //3.
  // const numbers = [1, 2, 4, 7];
  // for(var number in numbers)
  // {
  //   print("The square root of $number is ${sqrt(number)}");
  // }

  //4.
  // const numbers = [1, 2, 4, 7];
  // numbers.forEach((element) => print("The square root of $element is ${sqrt(element)}"));

  // Challenge 1: 
  // const firstName = "Bob";
  // if(firstName == "Bob"){
  //   const lastName = "Sith";
  // }
  // else if(firstName == "Ray"){
  //   const lastName = "Wanderlich";
  // }
  // PROBLEM:-lastName variable is in local scope so it can not be access outside condition
  
  //Challenge 2:
  //true && true =>true
  //false || false => false
  //(true && 1!=2) || (4>3 && 100<1) => true
  //((10/2)>3) && ((10%2)==0) =>true

  //Challenge 3:
  // const input = 11;
  // var number = 1;
  // while(number < input){
  //   number *= 2;
  // }
  // print(number);

  // Challenge 4: 
  // int n = 5;
  // int fibo = 1,n1 = 0, n2 = 1;
  // for(int i=2;i<=n;i++){
  //   print(fibo);
  //   fibo = n1+n2;
  //   n1 = n2;
  //   n2 = fibo;
  // }
  // print(fibo);

  // Challenge 5: 
  // var sum = 0;
  // for(int i=0;i<=5;i++){
  //   sum += i;
  // }
  // output: sum = 15 , No of iterations = 6

  // Challenge 6: 
  // for(int i=10;i>=0;i--){
  //   print(i);
  // }

  // Challenge 7: 
  // for(var i=0.0;i<=1.0;i+=0.1){
  //   print(i);
  // }
}