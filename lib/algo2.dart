import "dart:io";

Future<void> checkDevicesOnNetwork(String startIP, String endIP) async {
  // Convert start and end IP addresses to integers
  var start = ipToInt(startIP);
  var end = ipToInt(endIP);

  // Iterate over the range of IP addresses
  for (var i = start; i <= end; i++) {
    var ip = intToIp(i);
    try {
      // Attempt to resolve the hostname for the IP address
      var result = await InternetAddress.lookup(ip);
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('Device found at: $ip');
      }
    } on SocketException catch (_) {
      // Exception thrown when unable to resolve host
    }
  }
}

int ipToInt(String octet) {
  List<String> parts = octet.split('.');
  int result = 0;

  for (String part in parts) {
    int value = int.parse(part);
    result = (result << 8) | value;
  }

  return result;
}

String intToIp(int intValue) {
  List<String> parts = [];

  for (int i = 0; i < 4; i++) {
    parts.add((intValue & 255).toString());
    intValue = intValue >> 8;
  }

  return parts.reversed.join('.');
}
