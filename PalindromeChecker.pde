public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {System.out.println(lines[i] + " IS a palindrome.");}
    else
    {System.out.println(lines[i] + " is NOT a palindrome.");}
  }
}
public boolean palindrome(String word)
{
  String letters = "";
  for(int i = 0; i<word.length(); i++){
    if (Character.isLetter(word.charAt(i))==true)letters = letters + word.charAt(i);
  }
  String done = letters.toLowerCase();
  if(done.equals(reverse(done)))return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length(); i>0; i--){
    sNew = str.substring(str.length()-i,str.length()-i+1) + sNew;
  }
    return sNew;
}
