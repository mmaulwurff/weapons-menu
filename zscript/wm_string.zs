/* Copyright Alexander 'm8f' Kromm (mmaulwurff@gmail.com) 2018-2020
 *
 * This file is a part of Weapon Menu+.
 *
 * Weapon Menu+ is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version.
 *
 * Weapon Menu+ is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Weapon Menu+.  If not, see <https://www.gnu.org/licenses/>.
 */

class m8f_wm_String
{

  static string Beautify(string source)
  {
    string result = SeparateCamelCase(source);
    result.Replace("_", " ");
    return result;
  }

  /**
   * Works only with ASCII text.
   */
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
