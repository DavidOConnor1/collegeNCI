/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package inhertitance3;

/**
 *
 * @author dmoc2
 */
public class ChildOne extends Parent {

    
    private String Talent;
    
    public ChildOne() 
    {
        System.out.println("ChildOne");
        
    }

    public void details(String name, String Talent)
    {
        System.out.println("Your Name is: "+name+", Your Talent is: "+Talent);
    }
    
   
    public void details(String name)
    {
        System.out.println("Your name is: "+name);
    }

   

    

    

    
    
    
    
    
    
    
    
    
    
}
