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
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add, color: Colors.black))],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Yogyakarta',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Today', style: TextStyle(fontSize: 18, color: Colors.grey)),
            const SizedBox(height: 20),
            const Text(
              '28°C',
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 10),
            const Text('Sunny', style: TextStyle(fontSize: 20, color: Colors.grey)),
            const SizedBox(height: 10),
            const Text('❄️ 5 km/h', style: TextStyle(fontSize: 18, color: Colors.blue)),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
       child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Next 7 days', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('Now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('17.00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('20.00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('23.00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(4, (index) {
                      return Column(
                        children: const [
                          Text('❄️', style: TextStyle(fontSize: 26)),
                          Text('28°C', style: TextStyle(fontSize: 16, color: Colors.blue)),
                          Text('𖣘', style: TextStyle(fontSize: 26)),
                          Text('10 km/h', style: TextStyle(fontSize: 16, color: Colors.pink)),
                          Text('⤵', style: TextStyle(fontSize: 26)),
                          Text('0%', style: TextStyle(fontSize: 16, color: Colors.black)),
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Developed by: muhammadfarrasm.id', style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}





