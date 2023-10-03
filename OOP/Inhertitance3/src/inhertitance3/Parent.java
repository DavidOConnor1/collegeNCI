/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package inhertitance3;

/**
 *
 * @author dmoc2
 */
public class Parent {

    protected String name; /// can be accessed from other classes in the same package

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Parent(String name) {
        this.name = name;
    }
    
    
    
    
    public Parent() {
        System.out.println("Parent()");
    }
    
    
    
}
