import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'pages/contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Beautiful Home Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}

















// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Beautiful Home Page',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Welcome to Flutter'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.primary,
//         title: Text(widget.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Hello, Flutter!',
//               style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//                     color: Theme.of(context).colorScheme.primary,
//                   ),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               'Welcome to your beautiful home page.',
//               style: Theme.of(context).textTheme.titleMedium,
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 40),
//             ElevatedButton.icon(
//               onPressed: () {},
//               icon: const Icon(Icons.explore),
//               label: const Text('Explore'),
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton.icon(
//               onPressed: () {},
//               icon: const Icon(Icons.contact_mail),
//               label: const Text('Contact Us'),
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         tooltip: 'Action Button',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }