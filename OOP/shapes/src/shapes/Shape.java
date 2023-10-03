/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package shapes;

/**
 *
 * @author dmoc2
 */
public class Shape {
    
    protected double area;
    protected String name;

    public Shape() {
    }

    public Shape(double area, String name) {
        this.area = area;
        this.name = name;
    }
    
    

    public void setName(String name)    {
        this.name = name;
    }

    public double getArea() {
        return area;
    }

    public String getName() {
        return name;
    }
    
    
    
    
    
    
}
