import 'package:flutter/material.dart';

class SignalScreen extends StatelessWidget {
  const SignalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 246, 247),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                ),
                getItem('r'),
                getItem('c'),
                getItem('a'),
                getItem('s'),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(120, 20),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'خروج از حساب',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  getItem(String imageName) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Container(
        width: 400,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset('images/$imageName.png'),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'فروش روی : 160000',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.trending_down),
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Row(
                  children: [
                    Text(
                      'خرید روی : 149000',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.trending_up),
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Divider(
              color: Colors.black,
              height: 5,
              thickness: 0.8,
            ),
          ],
        ),
      ),
    );
  }
}
