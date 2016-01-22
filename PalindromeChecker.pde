public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String newStr = new String();
  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)) && word.charAt(i) != ' ')
    {
      newStr = newStr + word.charAt(i);
    }
  }
  String newerStr = new String();
  newStr = newStr.toLowerCase();
  for(int i = newStr.length()-1; i >= 0; i--)
  {
    newerStr = newerStr + newStr.charAt(i);

    if(newerStr.equals(newStr))
    {
      return true;
    }
  }
  //your code here
  return false;
}

