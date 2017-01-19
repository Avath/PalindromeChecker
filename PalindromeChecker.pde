public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    
    if(palindrome(noCapitals(noSpaces(numLetters(lines[i]))))==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
} 

public String noSpaces(String sWord){
   String t=new String();
  for(int i=0;i<sWord.length();i++){
    if(!sWord.substring(i,i+1).equals(" ")){
    t=t+sWord.substring(i,i+1);
    }
  }
  
   return t;
}
public String numLetters(String sString){
  String t=new String();
  for(int i=0;i<sString.length();i++){
  if(Character.isLetter(sString.charAt(i)))
  t=t+sString.substring(i,i+1);
    
  
  }
  return t;
  
}
public String noCapitals(String sWord){
 return sWord.toLowerCase();
}

public boolean palindrome(String word)
{
 String t=new String(); 
  
  for(int i=word.length()-1;i>-1;i--){
    t=t+word.substring(i, i+1);
    
  }
   if(word.equals(t)){
    return true;
    }
   
  return false;
  


}
public String reverse(String str)
{
    String sNew = new String();
     
  
  for(int i=str.length()-1;i>-1;i--){
    sNew=sNew+str.substring(i, i+1);
     
  }
  
  
    return sNew;
}


