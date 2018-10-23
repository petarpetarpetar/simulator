The project is to make a digital electronics simulator. Since I'm in highschool I do not have proper experience to do this but I'm giving
my best. The IDE that I'll be using is Processing (Java) since it has very well integrated graphics representation and already written 
functions such as rect() and ellipse().

The first step was fully understanding the logics behind a simulator program. The method it's running is as usual loop: read->update->draw.

1. Principle of work:

  1.1.  Code
 
    The object had been made to ease the process of adding new gates into the project.
    Inside update function the input's are updated according to what are the logical gate's input wires connected to.
    The connection part is done by making a new object called "konekcije" and it has 3 intigers and a boolean as a part of it.
    ints: start [actually an exit of one gate], endA, endB as it's possible to connect something to either 2 inputs of an logical gate.         So to be easier the inputs were seperated.
    boolean: data[negative or positive]
    After the edit mode is enabled by pressing "e" or "E" user enters an edit_mode and is able to interact with user's menu.
    utilising mouseX and mouseY functions it is able to obtain the current position of a mouse and then compare it with coordinates of  
    menus options. Using mouseReleased() interrupt we can get the position where user clicked and change "selected" data according to         what user clicked on. There's 5 possibilities for user to click on, and each represents one component(1-AND_gate, 2-OR_gate, 
    3-NOT_gate, 4-LED, 5-BUTTON).

## Next step:
Since is far from finished, we plan on adding an time dependent component, a timer. Also, if we find a way to add a graph, we'll do it.
Most important thing is to add a way to save your circuit into a smaller "chip" that you can use later in your projects. I think the best way to do it is to save every combination of inputs and outputs into a .txt, then read it and store as soon as "chip" is placet onto a workspace.
Then with every update funciton we need to call an update "chip" function.

Since I don't work much on this project I assume this would take really long time to implement.


    
