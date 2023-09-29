/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package countwords;

import javax.swing.JOptionPane;

/**
 *
 * @author dmoc2
 */
public class processing {
    
    
    String sentence;

    public String getSentence() {
        return sentence;
    }

    public void setSentence(String sentence) {
        this.sentence = sentence;
    }
    
    public void wordCounter()
    {//open 
       int countwords = sentence.split("\\s").length;
       JOptionPane.showMessageDialog(null, "There are : "+ countwords+ " Words");
        
    }//close 
    
    public void countingVowelsConstants()
    {
        int vowelCounter=0;
        int Constants =0;
        
        for(int i=0; i<sentence.length(); i++)
        {//open for
            if(sentence.charAt(i) =='e' || sentence.charAt(i)=='a' || sentence.charAt(i)=='i' || sentence.charAt(i) == 'o' || sentence.charAt(i) =='u' )
            {
                vowelCounter++;
            } else if(sentence.charAt(i)>='a'&& sentence.charAt(i)<='z')
            {
               Constants++; 
            }
            
        }
        
        int numOfLetters = vowelCounter + Constants;
        
          JOptionPane.showMessageDialog(null, "The Number of Vowels are: "+vowelCounter+ " & the number of constants are: "+Constants);
          JOptionPane.showMessageDialog(null, "The Number Of Letters there are is :" +numOfLetters );
        
        
    }//close method 
    
    
    
}
