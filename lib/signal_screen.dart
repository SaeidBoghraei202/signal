import 'package:flutter/material.dart';

class SignalScreen extends StatelessWidget {
  const SignalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'VIP سیگنال های ',
          style: TextStyle(
            fontFamily: 'vazir',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
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
            ],
          ),
        ),
      ),
    );
  }

  getItem(String imageName) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 400,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/$imageName.png'),
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
                            fontFamily: 'vazir',
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
                            fontFamily: 'vazir',
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
              Divider(
                color: Colors.black,
                height: 5,
                thickness: 0.8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
