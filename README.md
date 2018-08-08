The project is to make a digital electronics simulator. Since I'm in highschool I do not have proper experience to do this but I'm givining
my best. The IDE that I'll be using is Processing (JavaScript) since it has very well integrated graphics representation and already written 
functions such as rect() and ellipse().

The first step was fully understanding the logics behind a simulator program. The method it's running is as usual loop: read->update->draw.

1. Principle of work:

  1.1.  Code
 
    The object had been made to ease the process of adding new gates into the project.
    Inside update function the input's are updated according to what are the logical gate's input wires connected to.
    The connection part is done by making a new object called "konekcije" and it has 3 intigers and a boolean as a part of it.
       ints: start [acually an exit of one gate], endA, endB as it's possible to connect something to either 2 inputs of an logical gate. So to be easier the inputs were seperated.
       boolean: data[negative or positive]
       ---not done---
