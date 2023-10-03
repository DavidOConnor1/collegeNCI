/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package shapes;

/**
 *
 * @author dmoc2
 */
import java.util.Scanner;
public class App {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       
        Scanner input = new Scanner(System.in);
        circle c = new circle();
        
        c.setName("circle");
        
        System.out.println("Get method in action from parent: "+c.getName());
        
        System.out.println("Enter A Radius");
        double word = input.nextDouble();
        c.setRadius(word);
        
        System.out.println("You Entered : " + word);
        
        System.out.println("You have generated a area of: "+c.getArea(word));
    }
    
}
