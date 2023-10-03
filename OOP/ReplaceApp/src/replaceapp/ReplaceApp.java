/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package replaceapp;

/**
 *
 * @author dmoc2
 */
import javax.swing.JOptionPane;
public class ReplaceApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       String name;
       String newWord;
       
       Replace load = new Replace();
       
       name = JOptionPane.showInputDialog(null,"Enter Your Name");
       load.setName(name);
       
       load.compute();
      newWord = load.getNewWord();
      
      
     JOptionPane.showMessageDialog(null, "Your New Name is: "+ newWord);
       
       
    }
    
}
