import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF8ECAE6)),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8ECAE6),
        title: const Icon(
          Icons.account_circle,
          size: 32,
          color: Colors.white,
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.diamond, color: Colors.white),
              SizedBox(width: 4),
              Text(
                '10000',
                style: TextStyle(
                  color: Color(0xFF023047),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              Icon(Icons.add, color: Colors.white),
              SizedBox(width: 12),
            ],
          ),
        ],
      ),
      backgroundColor: const Color(0xFF219EBC),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                _TopMenuItem(
                  title: 'Joindre un quizz',
                  icon: Icons.group_add,
                ),
                SizedBox(width: 10),
                _TopMenuItem(
                  title: 'Mon rang',
                  icon: Icons.military_tech,
                ),
                SizedBox(width: 10),
                _TopMenuItem(
                  title: 'Classement',
                  icon: Icons.leaderboard,
                ),
              ],
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFFFB8500),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: const Text(
                'Les quizz tendances',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TopMenuItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const _TopMenuItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: const Color(0xFF023047)),
            const SizedBox(height: 4),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF023047),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}




