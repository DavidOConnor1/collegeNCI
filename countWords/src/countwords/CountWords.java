/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package countwords;

/**
 *
 * @author dmoc2
 */
 import javax.swing.JOptionPane;
public class CountWords {

  
    public static void main(String[] args) {
       String sentence = JOptionPane.showInputDialog(null, "Please enter a sentence!");
       
       processing load = new processing();
       
       load.setSentence(sentence);
       load.countingVowelsConstants();
       load.wordCounter();
       
    }
    
}
