/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package HangMan;

import javax.swing.JOptionPane;

/**
 *
 * @author dmoc2
 */

public class app {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        String output;
        char guess;
        Game load = new Game();
        
        for(int i=0; i<7; i++)
        {
            guess = JOptionPane.showInputDialog(null, "Enter Your Guess!").charAt(0);
            //call setter 
            load.setGuess(guess);
            //call compute(method)
            load.compute();
            //call and display the output for the current turn
            output = load.getOutput();
            JOptionPane.showMessageDialog(null, output);
        }
        JOptionPane.showMessageDialog(null, "The Secert Word : "+ load.getHiddenWord());
        
    }
    
}
