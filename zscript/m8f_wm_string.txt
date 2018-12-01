class m8f_wm_String
{

  static string Beautify(string source)
  {
    string result = SeparateCamelCase(source);
    result.Replace("_", " ");
    return result;
  }

  static string SeparateCamelCase(string source)
  {
    int    sourceLength = source.Length();
    string result       = "";
    string letter1      = source.CharAt(0);
    string letter2;

    for (int i = 1; i < sourceLength; ++i)
    {
      letter2 = source.CharAt(i);
      bool addSpace = IsSmallLetter(letter1) && IsBigLetter(letter2);
      if (addSpace) { result.AppendFormat("%s ", letter1); }
      else          { result.AppendFormat(letter1); }
      letter1 = letter2;
    }

    result.AppendFormat(letter2);

    return result;
  }

  private static bool IsSmallLetter(string letter)
  {
    int code = letter.CharCodeAt(0);
    return (97 <= code && code <= 122);
  }

  private static bool IsBigLetter(string letter)
  {
    int code = letter.CharCodeAt(0);
    return (65 <= code && code <= 90);
  }

} // class m8f_wm_String
