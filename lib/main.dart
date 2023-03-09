import "package:flutter/material.dart";
import "package:connectivity_plus/connectivity_plus.dart";

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Network Reconnaissance Scanner")),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "About"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info"),
          ],
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AcivePage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 225, 76, 39),
            ),
            child: const Text("Activate"),
          ),
        ),
      ),
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.black),
    );
  }
}

class AcivePage extends StatefulWidget {
  const AcivePage({super.key});

  @override
  State<AcivePage> createState() => _AcivePageState();
}

class _AcivePageState extends State<AcivePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Network Reconnaissance Scanner")),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "About"),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info"),
          ],
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainPage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            child: const Text("Activate"),
          ),
        ),
      ),
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.black),
    );
  }
}
