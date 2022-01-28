public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word) {
  String worde = onlyLetters(noSpaces(word));
  if (noCapitals(worde).equals(reverse(noCapitals(worde)))) {
    return true;
  }
  return false;
}

public String reverse(String str) {
  String s = "";
  for (int i = str.length(); i>0; i--) {
    s = s + str.substring(i-1, i);
  }
  return s;
}

public String noSpaces(String sWord){
  String s = "";
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i) != ' '){
      s = s + sWord.charAt(i);
    }
  }
  return s;
}

public String onlyLetters(String sString){
  String s = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      s = s + sString.charAt(i);
    }
  }
  return s;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

