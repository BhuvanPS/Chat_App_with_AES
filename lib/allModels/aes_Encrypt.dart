class EncryptData {
  static String caesar(String text, int key, int encrypt) {
    String result = "";

    for (var i = 0; i < text.length; i++) {
      int ch = text.codeUnitAt(i), x;
      int? offset;

      if (ch >= 'a'.codeUnitAt(0) && ch <= 'z'.codeUnitAt(0)) {
        offset = 97;
      } else if (ch >= 'A'.codeUnitAt(0) && ch <= 'Z'.codeUnitAt(0)) {
        offset = 65;
      } else if (ch >= '0'.codeUnitAt(0) && ch <= '9'.codeUnitAt(0)) {
        offset = 48;
      } else if (ch == ' '.codeUnitAt(0)) {
        result += " ";
        continue;
      }

      if (encrypt == 1) {
        x = (ch + key - offset!) % 26;
      } else {
        x = (ch - key - offset!) % 26;
      }

      result += String.fromCharCode(x + offset);
    }
    return result;
  }
}
