import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
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
                'Navigation',
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
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('View Location'),
              onTap: () {
                // Add navigation logic for View Location
              },
            ),
            ListTile(
              leading: const Icon(Icons.report),
              title: const Text('Report'),
              onTap: () {
                // Add navigation logic for Report
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // Add logout logic
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle(context, 'Interactive Map'),
              _buildMap(),
              const SizedBox(height: 20),
              _buildSectionTitle(context, 'Report Unusual Activity'),
              _buildReportForm(context),
              const SizedBox(height: 20),
              _buildSectionTitle(context, 'Recent Reports'),
              _buildRecentReports(),
              const SizedBox(height: 20),
              _buildSectionTitle(context, 'User Profile'),
              _buildUserProfile(context),
              const SizedBox(height: 20),
              _buildSectionTitle(context, 'Analytics Dashboard'),
              _buildAnalyticsDashboard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: const Color(0xFF155E95),
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _buildMap() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF155E95)),
      ),
      child: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(37.7749, -122.4194),
          zoom: 12,
        ),
        markers: {
          Marker(
            markerId: const MarkerId('1'),
            position: const LatLng(37.7749, -122.4194),
            infoWindow: const InfoWindow(title: 'Unusual Activity'),
          ),
        },
      ),
    );
  }

  Widget _buildReportForm(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Date and Time',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                // Handle report submission
              },
              icon: const Icon(Icons.send),
              label: const Text('Submit Report'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF16C47F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentReports() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const Icon(Icons.report),
              title: const Text('Unusual Activity 1'),
              subtitle: const Text('Description of the unusual activity.'),
            ),
            ListTile(
              leading: const Icon(Icons.report),
              title: const Text('Unusual Activity 2'),
              subtitle: const Text('Description of the unusual activity.'),
            ),
            ListTile(
              leading: const Icon(Icons.report),
              title: const Text('Unusual Activity 3'),
              subtitle: const Text('Description of the unusual activity.'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserProfile(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('User Name'),
              subtitle: const Text('user.email@example.com'),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  // Handle profile edit
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnalyticsDashboard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const Icon(Icons.analytics),
              title: const Text('Total Reports'),
              subtitle: const Text('15'),
            ),
            ListTile(
              leading: const Icon(Icons.analytics),
              title: const Text('Unusual Activities'),
              subtitle: const Text('10'),
            ),
            ListTile(
              leading: const Icon(Icons.analytics),
              title: const Text('Resolved Reports'),
              subtitle: const Text('5'),
            ),
          ],
        ),
      ),
    );
  }
}



















// import 'package:flutter/material.dart';

// class DashboardPage extends StatelessWidget {
//   const DashboardPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Kinondoni'),
//         backgroundColor: const Color(0xFF155E95),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: const Color(0xFF155E95),
//               ),
//               child: const Text(
//                 'Dashboard',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.home),
//               title: const Text('Home'),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.pushNamed(context, '/');
//               },
//             ),
//             ListTile(
//                 leading: const Icon(Icons.location_on),
//                 title: const Text('Location'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.pushNamed(context, '/location');
//                 }),
//             ListTile(
//               leading: const Icon(Icons.report),
//               title: const Text('Report'),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.pushNamed(context, '/report');
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.contact_mail),
//               title: const Text('Contact Us'),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.pushNamed(context, '/contact');
//               },
//             ),
//             ListTile(
//                 leading: const Icon(Icons.logout),
//                 title: const Text('Logout'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.pushNamed(context, '/');
//                 })
//           ],
//         ),
//       ),
//       body: Center(
//         child: Text(
//           'Welcome to the Dashboard!',
//           style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//                 color: const Color(0xFF155E95),
//                 fontWeight: FontWeight.bold,
//               ),
//         ),
//       ),
//     );
//   }
// }
