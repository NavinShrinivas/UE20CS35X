## The book
- We use a book called `Gang Of Four`, it defines 23 patterns categorised as : 
	- Creational (object creational) pattern
	- Structural pattern (static compossition/structgure of objects and classes)
	- Behavioral patterns (How classes communicate with each other)
- Coming up with good reusable code design needs trial and error. Some patterns work. 
- Codifying and making a formal process for design patterns can help speed this process up. This is what `patterns` are.
- The book used these 3 principles : 
	- Program to an interface not an implementation 
	- Favour object composistion rather than inheritance (a singleton pattern)
## Design patterns 
### An introduction 
- They are simply blue prints to improve the reusability of programs and make management easier. 
- Patterns have the following properties : 
	- Reusable themsevles 
	- Typically show interattions between objets 
	- They are only a template that needs to be filled 
	- Very language independent 
- Obvious advanatatges : 
	- Adds consistency to solutions for problems 
	- Provides a common vocabulary
	- Reduces time to solution
	- Increse reusaing.
- Cons :
	- Some patterns can cause issues is some other metric 
	- Depending on the pattern these downsides differ. 
	- Patterns can be over used and abused. 
### The structure of a pattern 
- To understand the patterns as fast as possible, we first need to learn how the patterns are defined in the book. 
- As we have already seen, they are split into 3 categories. (creational,structural,behavioral)
- A pattern has : 
	- A name (gives a common vocab)
	- Problem (problem where the patterns is applied to solve)
	- Solution(elements, relationships,responsibilites, collabs)
	- Consequece of using patterns (cons, pros)
- (Motivation,Intent,Problem,Solution,Implementation,Applicability,Consequences)
### How to select a pattern
- Given a 23 odd patterns, how to do u select the right one for you? 
	- Consider how patterns solve the problem. 
	- Scan the "intent" section. 
	- See how patterns are related. 
	- Examine why redesign 
	- Consider what should change in your code 
### How to use the select pattern : 
- A process like so:
	- Read about the pattern to be sure it's useful for you 
	- Study the "solution". 
	- Look at the concrete code examples. 
	- Define the classes. 
	- Use responsibilites and collabs for naming the classes.
	- Implementation should also have tips for implemnting 
## Creational patterns
- In this unit we will mostly be looking at creational patterns. 
- By controlling object creation, creational patterns solve the problem of code design and reusability.
- Common observations in these patterns are : 
	- Keep all the data of class the systems uses together
	- Hide the creation of objects
## Creational pattern 1 : Singleton pattern 
### Motivation 
- Aims to keep only one instance of the object in the entire JVM. 
- We can with this pattern be sure we only have one object of a class. 
- We can with sureity say that that is the global access point for that object.
- Initializes classes only when used for the first time. 
### Intent 
- ONLY one instance 
- The one istance should be allowed to use globally. 
### Problem 
> Singleton pattern solve 2 problems at once violating the SRP property. 
- Control access to some shared item. 
- Provides global access to data without the unsafe part and restricting who can modify the data. 
### Solution 
- Make the default constructure private 
- Create a static method that is calling the private constructor, All follwing calls to this method returns a cached object. 
- Code : 
```java
public class Printer {
private static Printer printer; //Cached variable
private int nrOfPages;
private Printer() { //Private constructor
}
public static Printer getInstance() { //Singleton pattern
return printer == null ?
printer = new Printer() :
printer;
}
public void print(String text){
System.out.println(text +
"n" + "Pages printed today " + ++nrOfPages +
"n" + "---------");
}
}

public class Employee {
private final String name;
private final String role;
private final String assignment;
public Employee(String name, String role, String assignment)
{
this.name = name;
this.role = role;
this.assignment = assignment;
}
public void printCurrentAssignment(){
Printer printer = Printer.getInstance();
printer.print("Employee: " + name + "n" +
"Role: " + role + "n" +
"Assignment: " + assignment + "n");
}
}
```
- The "static" method creating the instance here is considered `lazy`.
### Implementation 
- Problem with `lazy initialzers` is that they are NOT THRED SAFE.
- To solve this, you can make the getInstance() method `synchronised`. 
- this is however very expensive. 
- We can also do "eager initlization" : 
```java
// Static initializer based Java implementation of
// singleton design pattern
class Singleton
{
private static Singleton obj = new
Singleton();
private Singleton() {}
public static Singleton getInstance()
{
return obj;
}
}
```
- JVM runs the static code during loading for sure.
- Do this only when your sure your class is small and light weight. 
- The best implementation is "Double Checked loading" : 
- We can force sync only when the object is previoulsy not initliazed in the lazy loading method, hence checking twice(once for null and another for sync) : 
```java
public static Singleton getInstance()
{
if (obj == null)
{
// To make thread safe
synchronized (Singleton.class)
{
// check again as multiple threads
// can reach above step
if (obj==null)
obj = new Singleton();
}
}
return obj;
}
```

### Applicability 
- To be used when you want a single instance to be extended into other functionalities without then modifying you code. 
> This gives a feeling that creational patterns themsevles are applicable to once class at a tieme. 
### Concequences 
1. Controlled access to functionality. 
2. Helps decluttering the namespace by avoding gloabal variables. 
3. Allows for refinement over existing objects. 
4. Allows easy changes to more than 1 instance in a given application and also control the number of instances present. 
5. Allows for easier and flexiable operations over static classes. 
### Extra info about singletons 
- Every other pattersn like factory builder, prototyes...etc are implmented with the help of singletons.
## Creational patterns 2 : Factory 
### Motivation 
- Define an interface for creatign objects, let's the parents class (sublclass) to decide what object to actually create. 
- Basically moving the reponsibility of creating objects from client to another class. 
- AKA `virtual constrcutor`. This helps hide the actual implementation details for creating object but only gives access to the object. 
### Intent 
- Create objects in super class but allow subclass to to alter objects created. 
### Problem 
### Solution 
- Super class contains the create method, the sub class (extending class) gives functionality.
- Code : 
```java
public class AnimalFactory { //Super class
    
    public Animal getAnimal(String animal) {
        if(animal.equals(null)) return null;
        
        if(animal.equalsIgnoreCase("Dog")) {
            return new Dog();
        } else if(animal.equalsIgnoreCase("Cat")) {
            return new Cat();
        } else if(animal.equalsIgnoreCase("Rabbit")) {
            return new Rabbit();
        }
        return null;        
    }  
}

public interface Animal { //The class
    void eat();    
} 

public class Cat implements Animal { //Subclass
    @Override
    public void eat() {
        System.out.println("Cat is eating, meow!");
    }   
}
//...So on and so forth
```
### Applicability 
- A class cant tell with with certainty which class it must create an object of 
- A class wants the sub classes to write impl specifics for its methods (i.e there are absteract classses)
### Consenquences 
- Provides hooks for sub classes 
- Connects parellel architechtured classes. 
- Complicates the code. 
- Avoid tight coupling, OCP,SRP.
### Others 
- 2 types of factory pattern (Creator class is an abstract class and other is where its concrete).
- Parametersed factory methods 
## Creational patterns 3 : Builder pattern 
### Motivation
- We give the responsibility to build a object to a sperate class, this class knows all about the complexity of this object.
- Helps with increase in SPR. 
### Problem 
### Intent 
- Seperate the construction of a complx object from its representation such that the same construction process can "build" different objects. 
### Solution 
- As always concrete and abstract builders are possible. 
- Check code examples here : https://drive.google.com/file/d/1vDobSr3-eMo13NCfkCeiczGVhgS3Mp6L/view?usp=share_link
### Applicability 
- Different rep. for the same object is needed. 
- Wanna get rid of complex constrcutor patterns
- Algorithm to create the object is diff from data that make the object. 
### Participant 
- Builder
- concrete builder
- Director 
- Product
### Consequences 
- Let's you vary internal representation 
- Isolcated code for construction and rep. 
- Gives control over building objects
### Pros and Cons 
- SRP is held 
- Allows reuse of code 
- Can defer, skip or recurse th building of an object. 
- Complicates the code.
## Creational pattern 4 : Prototype 
### Motivation
- Create a new object by mention the prototype and creating objects by using the prototype. 
### Intent
- Copy existing objects without copying classes.
- The `clone` method is a solid example of this. 
### Problem 
- Given a parent with a clone method and a child class with an overriding clone method, the child class will call the parent classes clone method before executing its own. 
### Solution
- Check the code solutions in the abvove drive link
### Applicability 
- Classes to be created are knows at runtime. 
- Avoid parellel arch. 
- When a class only has a fixed number os statese, its better to chanvve then ready and just clone them when needed.
### Consequences 
- Adding and removing producst are runtime 
- Reduces sublcasses 
## Structural pattern 1 : Adaptor 
- Structural patterns are more concerned with how many classes compose a bigger class.
- 