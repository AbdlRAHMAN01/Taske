import 'package:flutter/material.dart';

void main() {
  runApp(VegetablesApp());
}

class VegetablesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VegetablesPage(),
    );
  }
}

class VegetablesPage extends StatelessWidget {
  final List<Map<String, String>> vegetables = [
    {
      'name': 'Boston Lettuce',
      'price': '1.10 € / piece',
      'image':
          'https://via.placeholder.com/150/00FF00', // استخدم رابط الصور الخاص بك هنا
    },
    {
      'name': 'Purple Cauliflower',
      'price': '1.85 € / kg',
      'image': 'https://via.placeholder.com/150/800080',
    },
    {
      'name': 'Savoy Cabbage',
      'price': '1.45 € / kg',
      'image': 'https://via.placeholder.com/150/008000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text('Vegetables', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryChip(
                    label: 'Cabbage and lettuce (14)', isSelected: true),
                CategoryChip(label: 'Cucumbers and tomatoes (12)'),
                CategoryChip(label: 'Onions and garlic (8)'),
                CategoryChip(label: 'Peppers (7)'),
                CategoryChip(label: 'Potatoes and carrots (5)'),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: vegetables.length,
              itemBuilder: (context, index) {
                return VegetableCard(
                  name: vegetables[index]['name']!,
                  price: vegetables[index]['price']!,
                  imageUrl: vegetables[index]['image']!,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;

  CategoryChip({required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Chip(
        label: Text(label),
        backgroundColor: isSelected ? Colors.purple : Colors.grey[200],
        labelStyle: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
    );
  }
}

class VegetableCard extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;

  VegetableCard(
      {required this.name, required this.price, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.network(imageUrl, width: 100, height: 100, fit: BoxFit.cover),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 8.0),
                Text(price,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600])),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
