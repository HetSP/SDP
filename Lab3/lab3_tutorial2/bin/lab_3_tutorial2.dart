// import 'package:lab_3_tutorial2/lab_3_tutorial2.dart' as lab_3_tutorial2;
// void use_optional([String name = "Het"])
// {
//   print("${name} is very honest!! ");
// }
// void named({required int x, int y = 4})
// {
//   print("${x} and ${y}");
// }
// no_need_type(number)
// {
//   return '$number is a very nice number.';
// }

/* dart sees it
String no_need_type(dynamic number)
{
  return '$number is a very nice number.';
}
*/

// String youAreWonderful([String name = "Bob"])
// {
//    return ("you are wonderful ${name}!!");
// }

// String numberPeople([int count = 10])
// {
//    return ("you are wonderful bob!!${count} think that.");
// }

// String mix(String name,[int count = 30])
// {
//    return ("you are wonderful Bob!!${count} think that.");
// }
void main() {
  //repeating that code in multiple spots presents two problems
  //duplicating effort
  //you need to change the logic in that bit of code, have to track down all of those instances of the code and change them in the same way
  //DRY = Don't Repeat Yourself

  //Part of function
  //Function Signature : return type, function name and parameters
  //Function Body : code between braces

  //main = the function that every Dart program starts with and return type :void

  // top-level-functions : which are functions that aren’t inside a class or another function.
  // method : a function is inside a class

  //Function PARAMETER (abstract): the name and type which is defined as input to your function
  //Function ARGUEMENTS (concrete): the actual value which we pass

  //POSITIONAL PARAMETERS: supply the arguments in the same order as defined the parameters

  //OPTIONAL PARAMETERS : parameter with square brackets and add a question mark after the type if we don't pass that it will be null
  // Default parameter + optional parameter

  // use_optional("Het");
  // use_optional();

  //NAMED PARAMETERS : surround it with curly braces.....make the parameters inside optional

  //named(x:6, y:7);

  //function signature was getting a long ,adding a ',' after the last parameter lets the IDE format it vertically

  //Avoiding side effects :
  /*void hello()
  {
    print('Hello!');  ===> print on console ---so console is side effect 
  } */

  //Pure functions : do exactly what you expect because they always return the same output for any given input

  //Optional types  --- dart automatically infere return tyoe and parameter type
  //no_need_type(10);

  //mini-exercise 1
  //youAreWonderful();

  //exercise2
  //numberPeople();

  //exercise3
  //mix("Het");

  //Anonymous functions
  //first class citizen --- we can assign function as value to other variables
  // Function multiply = (int a, int b)
  // {
  //   return a * b;
  // };

  //Returning functions from functions --- higher order function
  // Function namedFunction()
  // {
  //   return
  //   () {
  //     print('hello');
  //     };
  // }

  //Arrow functions  --- arrow notation or arrow syntax
  //int add(int a, int b) => a + b;

  //Anonymous function with foreach loop
  // const array=[1, 2, 3, 4];
  // array.forEach((num){print(num);});

  //Mini Exercise
  // exercise-1
  // Function wonderful = ([String name = "bob"]){
  //   return ("you are wonderful ${name}!!");
  // };
  // String ans = wonderful("het");
  // print(ans);  output:-you are wonderful het!!

  // exercise-2
  // const people = ['Chris', 'Tiffani', 'Pablo'];
  // people.forEach((element) {
  //   String ans = "You are wonderful ${element}";
  //   print(ans);
  // });
  // output:
  // You are wonderful Chris
  // You are wonderful Tiffani
  // You are wonderful Pablo

  //Arrow functions
  // You replaced the function’s braces and body with an arrow
  // (=>) and left off the return keyword. The return value is
  // whatever the value of the expression is. Writing a function in this way is known as arrow syntax or arrow notation.

  //Mini exercise
  // const people = ['Chris', 'Tiffani', 'Pablo'];
  // people.forEach((element) => print("You are wonderful ${element}"));
  //output:
  // You are wonderful Chris
  // You are wonderful Tiffani
  // You are wonderful Pablo

  // Challenge 1:
  // bool Prime(int no){
  //   for(int i=2;i<no/2;i++){
  //      if(no/i==0){
  //       return false;
  //      }
  //   }
  //   return true;
  // }

  //Challenge 2:
  // int repeatTask(int times,int input,Function task){
  //   while(times-- != 0){
  //     input = task(input);
  //   }
  //   return input;
  // }
  // print(repeatTask(4,2,(n){return n*n;}));

  // Challenge 3: 
  // print(repeatTask(4,2,(n)=>n*n));

}
