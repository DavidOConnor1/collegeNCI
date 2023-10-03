/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package replaceapp;

/**
 *
 * @author dmoc2
 */
public class Replace {
    
    private String name;
    private String newWord;
    
  StringBuffer strBuff = new StringBuffer();

        public void Replace()
        {//open constructor
            name = "";
            newWord = "";
            
        }//close constructor

    public void setName(String name) {
        this.name = name;
    }

  

  
        
        public void compute()
        {//open class
            for(int i = 0;i <name.length(); i++ )
            {//open for
                if(name.charAt(i) == 'a')
                {//open if
                    strBuff.append('*');
                }//close if 
                else 
                {//open else
                    strBuff.append(name.charAt(i));
                    
                }//close else  
            }//close for 
            newWord = strBuff.toString();
        } //close class 
    
        public String getName() {
        return name;
    }

    public String getNewWord() {
        return newWord;
    }
    
    
}
