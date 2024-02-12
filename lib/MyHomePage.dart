import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:assignment2/CalculatorView.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key}) ;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'MENU',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: Text('HOME'),
              onTap: () {
                // Close the drawer and navigate to Home page
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('CALCULATOR'),
              onTap: () {
                // Close the drawer and navigate to Calculator page
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculatorPage()),
                );
              },
            ),
            ListTile(
              title: Text('ABOUT'),
              onTap: () {
                // Close the drawer and navigate to About page
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),

          ],
        ),
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calc',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
        ],
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.white,
        // Add navigation functionality here
        onTap: (int index) {
          if (index == 0) {
            // Navigate to Home page
          } else if (index == 1) {
            // Navigate to Calculator page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CalculatorPage()),
            );
          } else if (index == 2) {
            // Navigate to About page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutPage()),
            );
          }
        },
      ),
    );
  }
}

class CalculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Center(
        child: CalculatorView(),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Text(
          'About Page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
