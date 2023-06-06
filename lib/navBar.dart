import 'package:flutter/material.dart';
import 'package:flutter_begaining_assignment/pages/dashboard.dart';
import 'package:flutter_begaining_assignment/pages/homepage.dart';
import 'package:flutter_begaining_assignment/pages/settings.dart';
class navBar extends StatefulWidget {
  @override
  _TabbedScreenState createState() => _TabbedScreenState();
}

class _TabbedScreenState extends State<navBar> {
  int _currentPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Perform settings action
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center
                  ,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                _selectPage(0);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Dashboard'),
              leading: Icon(Icons.dashboard),
              onTap: () {
                _selectPage(1);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: () {
                _selectPage(2);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _currentPageIndex,
        children: [
          HomePage(),
          DashboardPage(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
