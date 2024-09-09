//Interface
abstract class Encryptable {
  String encrypt(String data);
  String decrypt(String data);
}

//AES ALgo class
class AES implements Encryptable {
  static final int shiftSteps = 3;
  @override
  String encrypt(String data) {
    String encryptedData = "";
    for (int i = 0; i < data.length; i++) {
      encryptedData += String.fromCharCode(data[i].codeUnitAt(0) + shiftSteps);
    }
    return encryptedData;
  }

  @override
  String decrypt(String data) {
    String decryptedData = "";
    for (int i = 0; i < data.length; i++) {
      decryptedData += String.fromCharCode(data[i].codeUnitAt(0) - shiftSteps);
    }
    return decryptedData;
  }
}

//RSA ALgo class
class RSA implements Encryptable {
  final int shiftSteps = 1;
  @override
  String encrypt(String data) {
    String encryptedData = "";
    for (int i = 0; i < data.length; i++) {
      encryptedData += String.fromCharCode(data[i].codeUnitAt(0) + shiftSteps);
    }
    return encryptedData;
  }

  @override
  String decrypt(String data) {
    String decryptedData = "";
    for (int i = 0; i < data.length; i++) {
      decryptedData += String.fromCharCode(data[i].codeUnitAt(0) - shiftSteps);
    }
    return decryptedData;
  }
}

void main() {
  AES algo1 = AES();
  RSA algo2 = RSA();

  String data = "Priyanshu";
  String aesEnc = algo1.encrypt(data);
  String rsaEnc = algo2.encrypt(data);
  print("AES:  ${aesEnc}");
  print("RSA: ${rsaEnc}");

  print("Normal from AES: ${algo1.decrypt(aesEnc)}");
  print("Normal from RSA: ${algo2.decrypt(rsaEnc)}");
}
