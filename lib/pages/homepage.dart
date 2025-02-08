import 'package:flutter/material.dart';
import 'package:openspace_mobile/common/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1549125764-91425ca48850?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            // 'https://i.sstatic.net/sMhLz.jpg', // Placeholder image URL
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.5), // Adjust the opacity as needed
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Our Mobile GIS App',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  'Our Web-GIS application offers state-of-the-art mapping and spatial analysis tools. Explore various geographic datasets and visualize data like never before.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const LoginForm();
                      },
                    );
                  },
                  icon: const Icon(Icons.map),
                  label: const Text('Get Started'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF16C47F),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                  icon: const Icon(Icons.contact_mail),
                  label: const Text('Contact Us'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF155E95),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}







// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           Image.network(
//             'https://images.unsplash.com/photo-1549125764-91425ca48850?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Placeholder image URL
//             fit: BoxFit.cover,
//           ),
//           Container(
//             color: Colors.black.withOpacity(0.5), // Adjust the opacity as needed
//           ),
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Web-GIS Application',
//                   style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   'Dear report any unusually activite to Municipality',
//                   style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                         color: Colors.white,
//                       ),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 40),
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     // Navigate to the map page
//                   },
//                   icon: const Icon(Icons.map),
//                   label: const Text('Get Started'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF16C47F),
//                     padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     textStyle: const TextStyle(fontSize: 18),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/contact');
//                   },
//                   icon: const Icon(Icons.contact_mail),
//                   label: const Text('Contact Us'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color.fromARGB(255, 14, 136, 230),
//                     padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     textStyle: const TextStyle(fontSize: 18),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

