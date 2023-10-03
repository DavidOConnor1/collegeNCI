/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package shapes;

/**
 *
 * @author dmoc2
 */
public class circle extends Shape {
    
    private double radius;

    public circle(String name, double radius) 
    {
        this.radius = radius;
    }

    public circle() {
    }
    
    

    public circle(double radius, double area, String name) {
        super(area, name);
        this.radius = radius;
    }

    public double getArea(double radius) {
        area = 3.14*radius*radius;
        return area;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }
    
   
    
    
    
    
    
    
}
