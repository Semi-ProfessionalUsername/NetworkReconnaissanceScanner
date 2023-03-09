import 'dart:io';

Future<void> pingAllAddresses(String networkPrefix) async {
  for (int i = 1; i <= 254; i++) {
    String ipAddress = '$networkPrefix.$i';
    try {
      ProcessResult result =
          await Process.run('ping', ['-c', '1', '-w', '1', ipAddress]);
      if (result.exitCode == 0) {
        print('$ipAddress is online.');
      }
    } catch (e) {
      print('Error pinging $ipAddress: $e');
    }
  }
}

Future<List<String>> pingClassC() async {
  List<String> responseArray = [];

  for (int i = 0; i <= 255; i++) {
    for (int j = 0; j <= 255; j++) {
      String ipAddress = '192.168.$i.$j';
      try {
        final result = await InternetAddress.lookup(ipAddress);
        if (result.isNotEmpty && result.first.rawAddress.length == 4) {
          responseArray.add(ipAddress);
        }
      } catch (_) {
        // Do nothing
      }
    }
  }

  return responseArray;
}
