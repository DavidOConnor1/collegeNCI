/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package inhertitance3;

/**
 *
 * @author dmoc2
 */
import java.util.Scanner;
public class App {

 
    public static void main(String[] args) {
        
        Scanner input = new Scanner(System.in);
        // TODO code application logic here
        
        ChildOne c = new ChildOne();
        
        System.out.println("Type Your Name");
        System.out.println("Type in Your Talent");
       
        
        c.details(input.next(), input.next()+"\n");
        
        
          
        
        ChildTwo c2 = new ChildTwo("Momma" , 28);
       
        System.out.println("Your Name: "+c2.getName()+", Your Age is: "+c2.getAge());
        
     
        
    }
    
}
