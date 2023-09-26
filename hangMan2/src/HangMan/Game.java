/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package HangMan;

/**
 *
 * @author dmoc2
 */
public class Game {
    private String hiddenWord = "hello";
    private char guess;
    private String output;
    StringBuffer sb;

    public Game() {
    }

    public void setGuess(char guess) {
        this.guess = guess;
    }
    
    //get method for each output

    public String getHiddenWord() {
        return hiddenWord;
    }

    public String getOutput() {
        return output;
    }
    
    public void compute()
    {
        sb = new StringBuffer();
        for(int i=0; i<hiddenWord.length(); i++)
        {//open for
            if(guess == hiddenWord.charAt(i))
            {//open
                sb.append(guess);
            }//close if 
            else {
                sb.append("*");
            }
        }//close for 
        output = sb.toString();
    }
    
    
    
    
    
}
