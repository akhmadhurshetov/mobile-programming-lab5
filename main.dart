import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Lab 5 Solutions")),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Section1Container(),
              Divider(),
              Section2ColumnRow(),
              Divider(),
              Section3TextField(),
              Divider(),
              Section4ExpandedFlex(),
              Divider(),
              Challenge1UserProfile(),
              Divider(),
              Challenge2ProductItem(),
            ],
          ),
        ),
      ),
    );
  }
}

//
// 1. The Container Widget
//
class Section1Container extends StatelessWidget {
  const Section1Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Task 1: Change color + height
        Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.redAccent,
          height: 150,
          width: 100,
          child: const Icon(Icons.home), // Task 2: Replace Text with Icon
        ),
        const SizedBox(height: 10),
        // Task 3: Rounded corners with BoxDecoration
        Container(
          padding: const EdgeInsets.all(16.0),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        const SizedBox(height: 10),
        // Task 4: Add margin
        Container(
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(16.0),
          height: 100,
          width: 100,
          color: Colors.green,
        ),
      ],
    );
  }
}

//
// 2. Column & Row Widgets
//
class Section2ColumnRow extends StatelessWidget {
  const Section2ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Task 1: Add two more children
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Task 4
          children: const [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
          ],
        ),
        const SizedBox(height: 10),
        // Task 2 + 3: Change to Row + evenly spaced
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
          ],
        ),
      ],
    );
  }
}

//
// 3. TextField Widget
//
class Section3TextField extends StatelessWidget {
  const Section3TextField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(); // Task 4
    return Column(
      children: [
        TextField(
          controller: controller,
          obscureText: true, // Task 2
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Enter your password", // Task 1
            icon: Icon(Icons.lock), // Task 3
          ),
        ),
      ],
    );
  }
}

//
// 4. Advanced Layout: Expanded, Flex, Spacer
//
class Section4ExpandedFlex extends StatelessWidget {
  const Section4ExpandedFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Task 1: Wrap both in Expanded
        Row(
          children: [
            Expanded(child: Container(height: 100, color: Colors.red)),
            Expanded(child: Container(height: 100, color: Colors.green)),
          ],
        ),
        const SizedBox(height: 10),
        // Task 2: Use flex
        Row(
          children: [
            Expanded(flex: 1, child: Container(height: 100, color: Colors.red)),
            Expanded(flex: 2, child: Container(height: 100, color: Colors.green)),
          ],
        ),
        const SizedBox(height: 10),
        // Task 3: Replace Row with Column
        SizedBox(
          height: 200,
          child: Column(
            children: [
              Expanded(child: Container(color: Colors.red)),
              Expanded(child: Container(color: Colors.green)),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Task 4: Spacer between containers
        Row(
          children: [
            Container(width: 100, height: 100, color: Colors.blue),
            const Spacer(),
            Container(width: 100, height: 100, color: Colors.orange),
          ],
        ),
      ],
    );
  }
}

//
// Challenge 1: User Profile Card
//
class Challenge1UserProfile extends StatelessWidget {
  const Challenge1UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(child: Text("A")),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("User Name", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("@username", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text("A short bio about the user goes here..."),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Follow")),
              ElevatedButton(onPressed: () {}, child: const Text("Message")),
            ],
          ),
        ],
      ),
    );
  }
}

//
// Challenge 2: Product List Item
//
class Challenge2ProductItem extends StatelessWidget {
  const Challenge2ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network("https://via.placeholder.com/100"),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Product Title", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text("A brief description of the item...", style: TextStyle(fontSize: 14)),
                SizedBox(height: 4),
                Text("\$99.99", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.green)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
