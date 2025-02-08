import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kinondoni'),
        backgroundColor: const Color(0xFF155E95),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xFF155E95),
              ),
              child: const Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text('Location'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/location');
                }),
            ListTile(
              leading: const Icon(Icons.report),
              title: const Text('Report'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/report');
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/');
                })
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to the Dashboard!',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: const Color(0xFF155E95),
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
