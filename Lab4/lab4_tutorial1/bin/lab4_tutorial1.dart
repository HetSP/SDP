import 'package:lab4_tutorial1/lab4_tutorial1.dart' as lab4_tutorial1;
import 'user.dart';
import 'dart:math';

/* Constructors are of 5 types:
  (Constuctor with class _name only is un_named constructor)
  1) Default Constructor
  2) Custom Constructor(With parameter --> Generic Constructor)
    (i) Long-form constructor
    (ii) Short-form constructor
    (iii) Named Constructor
  3) Factory constructor
*/

//CLASSES
  //class is a user defined data type.
  //class is blueprint for creating object it will not occupy any space in memory.
  //classes are a core component of object-oriented programming and They’re used to combine data and functions inside a single structure
  //the functions exist to transform the data and  Functions inside of a class are known as methods, while constructors are special methods you use to create objects from the class
  //in dart every value is class
  //we have to define class outside main function
  //the value you create from a class is called an object and Another name for an object is instance so creating an object is sometimes called instantiating a class
  //final user = User();
  //Here we are calling constuctor method of User class without any parameters this will return an object of User class
  //we can create object using new keyword also.
  // final user = new User();
  // user.name="Het";
  // user.id=20;
  //print(user); //output:Instance of 'User'
  // print(user.name); //output:Het
  // print(user.id); //output:20
  //We can print properties of object by overwriting toString method of Object class
  //@ is an annotation
  //the @override annotation is telling both you and the compiler that toString is a method in Object that you want to override with your own customized version, so if you accidentally wrote the toString method signature incorrectly, the compiler would warn you about it because of the @override annotation.
  //print(user); //output:User(id:20,name:Het)
  //Serialization is required because when we are sending object over the network files,database and network only knows how to handle simple data types like string and number they don't know how to handle complex data types like objects that is why we need to serialize the object.
  //Serialization will convert object in string so that it is easy to transfer it across the network and handle it
  //when we want to read the data we can do deserialization by which string is converted into an object.
  //we can use toString method of object to serialize that object but problem is in deseralization because in toString method we have not follow any fixed format so it is difficult to deserialize that string
  //so we use JSON format
  //JSON stands for javascript object notation
  //we use toJson method for serialization
  //Rules for writting toJson method
  //Since this is your own custom method and you’re not overriding a method that belongs to another class, you don’t add the @override annotation.
  //In Dart naming conventions, acronyms are treated as words.Thus, toJson is a better name than toJSON.
  //There’s nothing magic about serialization in this case. You simply used string interpolation to insert the property values in the correct locations in the JSON formatted string.
  //In JSON, objects are surrounded by curly braces, properties are separated by commas, property names are separated from property values by colons, and strings are surrounded by double-quotes. If a string needs to include a double-quote inside itself, you escape it with a backslash like so: \"
  //print(user.toJson()); //output:{"id":20 ,"name":"Het"}
  // final pass = new Password();
  // pass.value = "hetpatel";
  // print(pass.isValid());

  //Constructors
  //Constructors are methods that create, or construct, instances of a class.constructor is used to create object of class and it has same name as class so it has return type same as class.
  //we put constructors in starting of class before any other property.
  //Types of CConstructors
  //Default Constructors
  //if we expliccitly not provide any constructor during declaration of class then dart will itself provide default constructor with no arguments
  //Example:
  //class demo{
  //  value = '';
  //}
  // class demo{
  //   demo();
  //   value = '';
  // }
  //Above both the examples are same here including the default demo() constructor is optional.

  //Custom Constructors
  //If we want to pass parameters to the constructor to modify how our class builds an object we can using custom constructors
  //This type of constructor is called a generative constructor because it directly generates an object of the same type.

  //long-form Constructors
  //Example:
  // class demo{
  //   demo(id,name){
  //     this.id = id;
  //     this.name = name;
  //   }
  //   int id = 0;
  //   String name = '';
  // }
  //The keyword this in the constructor body allows you to disambiguate which variable you’re talking about. It means this object.
  //So this.name refers the object property called name, while name (without this) refers to the constructor parameter.
  //Using the same name for the constructor parameters as the class properties is called shadowing.
  //final temp = new demo(93,"Het");  //this line will create object of demo class with id=93  and name=Het

  //short-form Constructors
  //short-form constructor where we don’t provide a function body, but we instead list the propertiesyou want to initialize, prefixed with the this keyword.Arguments we send to the short form constructor are used to initialize the corresponding object properties.
  //Example:
  // class demo{
  //   demo(this.id,this.name);
  //   int id = 0;
  //   String name = '';
  // }

  //Named Constructor
   //Example:
  //class demo {
     //demo.hill() {
       //id = 0;
       //name = "demo";
     //}
     //late int id;
     //late String name;

     //@override
     //String toString() {
       //return "(id:$id,name:$name)";
     //}
    //}
    // final temp = new demo.hill();
    // print(temp);  //output:(id:0,name:"demo")

// class Password
// {
//   final String value;
//   const Password([value = '1234']) : this.value = value;
//   bool isValid()
//   {
//     if (value.length >= 8)
//     {
//       return true;
//     }
//     return false;
//   }

//   @override
//   String toString()
//   {
//     return "value:$value";
//   }
// }

// class MyClass
// {
//   var myProperty = 1;
// }

// class Email
// {
//   var _address = '';
//   String get value => _address;
//   set value(String address) => _address = address;
// }

// class SomeClass
// {
//   static int myProperty = 0;
//   static void myMethod()
//   {
//     print('Hello, Dart!');
//   }
// }

// class Student
// {
//   Student({firstName = 'abc', lastname = 'xyz', grade = 0}):this.firstName = 'abc', this.lastName = 'xyz', this.grade = 100;
//   final String firstName, lastName;
//   final int grade;
// }

// class Spheres
// {
//   static const PI = (22 / 7);
//   const Spheres({int radius = 0}):this.radius = radius;
//   final int radius;
//   double get volume => (4 / 3) * PI * radius * radius * radius;
//   double get area => 2 * PI * radius;
// }

// /*
// 4 types of a variable:class variable,instance variable,global variable,local variable
// */ 

// class MySingleton{
//   MySingleton.__();
//   static final MySingleton _instance = MySingleton.__();
//   factory MySingleton() => _instance;
// }

//JSON -->Javascript object notation
void main()
{
  // print('Hello world: ${lab4_tutorial1.calculate()}!');
  
  /*
  // Class
  // Classes are used to combine data and functions ins_ide a single structure.
  // Object creation is also called as an instantiating a class and object is an insatnce of a class.
  final user = new User();//new is optional over here
  user._id = 1;
  user._name = 'abc';
  print(user); // Insatnce of 'User'
  print(user.toJson());
  final user1 = User() 
  .._id = 2
  .._name = "xyz";
  // this .. is a cascade operator and ; is at the end only
  */
  
  /*
  
  // Mini exrecises
  Password p1 = Password();
  p1.value = 'Diya1234';
  print(p1.isVal_id());
  p1.value = '1234';
  print(p1.isVal_id());
  
  */
  
  /*
  
  //_named constructor 
  User user2 = User(id:0,name:'anonymous');
  print(user2);
  const obj1 = User.anonymous();
  const obj2 = User.anonymous();
  
  // canonical objects
  print(identical(user2,obj2));//This is false
  print(identical(obj1,obj2));//This is true
  print(user2.id);
  */
  
  /*
  final jb = User(id:1,name:'JB Lorenzo');
  final map = {'id':10,'name':'manda'};
  final manda = User.fromJson(map);//Factory constructor
  */
  // final email = Email();
  // email.value = 'abc@xyz.com';
  // final emailString = email.value;
  // print(emailString);

  // final value = SomeClass.myProperty;
  // SomeClass.myMethod();
  // value.myMethod(); // This is not valid
  /*
  // Refernce of object(not deep copy)
  final myObject = MyClass();
  final another = myObject;
  myObject.myProperty = 2;
  print(another.myProperty);
  */

  // final mySingleton = MySingleton();
  
  // Challanges:

  // Challange 1:
  
  // final Student bert = Student(firstName:'bert', grade: 95);
  // final Student ernie = Student(firstName: 'ernie', grade: 85);
  
  // Challange 2:
  
  // Spheres s1 = Spheres(radius:12);
  // print(s1.area);
  // print(s1.volume);
}