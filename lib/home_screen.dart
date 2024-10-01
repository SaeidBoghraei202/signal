import 'package:flutter/material.dart';
import 'package:signal/signal_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[160],
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
              ),
              SizedBox(height: 80),
              Image.asset(
                'images/p.png',
                width: 380,
              ),
              SizedBox(height: 80),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal, minimumSize: Size(300, 50)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignalScreen()),
                  );
                },
                child: Text(
                  'ورود به حساب',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, minimumSize: Size(300, 50)),
                onPressed: () {},
                child: Text(
                  'ثبت نام ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Text('فراموشی رمز'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
