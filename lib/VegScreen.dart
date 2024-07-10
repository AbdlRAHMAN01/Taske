// import 'package:flutter/material.dart';

// class VegScreen extends StatefulWidget {
//   const VegScreen({super.key});

//   @override
//   State<VegScreen> createState() => _VegScreenState();
// }

// class _VegScreenState extends State<VegScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Row(
//             children: [
//              const SizedBox(
//                 width: 20,
//               ),
//             const  Padding(
//                 // padding: const EdgeInsets.only(left: 20),
//                 padding: EdgeInsetsDirectional.only(start: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Icon(Icons.arrow_back_ios_new),
//                     Text(
//                       'vegatbals',
//                       style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Spacer(),
//               Image.asset('assets/Vegetables.png'),
//             ],
//           ),
//         TextFormField(
        
//         ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: VegScreen(),
    );
  }
}

class VegScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/sofa.png', // هنا يتم تغيير الصورة إلى الصورة المحلية
                height: 200,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Room Sofa',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                ColorDot(Colors.blue),
                ColorDot(Colors.brown),
                ColorDot(Colors.black),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Drawing Room Wooden Sofa Set is solid wooden sofa set which you can contrast the cushion of any color. The good sight caused use to the furniture help us relax for a longer time.',
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  '¥2500',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                  ),
                  onPressed: () {},
                  child: Text('Add to cart', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;

  ColorDot(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      width: 24,
      height: 24,
    );
  }
}
