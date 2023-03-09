import 'dart:io';

/*

}*/

// Converts IP to int. IF 1-2 DIGIT OCTET, PUT X's IN PLACE OF REMAINING DIGITS
int ipToInt(String ip) {
  var parts = ip.split('.');
  for (var i = 0; i < parts.length; i++) {
    if (parts[i].contains("X")) {
      parts[i] = parts[i].replaceAll("X", "");
    }
  }
  return int.parse(parts.join());
}

void main(List<String> args) {
  var recieved = ipToInt("192.168.10.188");
  print(recieved);
}

/*
String intToIp(int ipNum) {

}*/
