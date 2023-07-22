// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Learn'),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Hub'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_rounded), label: 'chat'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///c1
            Container(
              // decoration: BoxDecoration(color: Colors.black),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 250, 250, 250)),
              child: Column(children: [
                SizedBox(
                  height: 50,
                ),
                //child 1 //

                Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 250, 250, 250)),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.align_horizontal_left_outlined,
                        color: Colors.grey,
                        size: 30,
                      ),
                      SizedBox(
                        width: 250,
                      ),
                      Icon(
                        Icons.message,
                        color: Colors.grey,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.notifications_none,
                        color: Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                ),

                Container(
                  // width: 400,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 250, 250, 250)),
                  // padding: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 10, top: 10),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Text(
                        'Hello, Priya!',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 250, 250, 250)),
                        padding: EdgeInsets.only(left: 10),
                        alignment: Alignment.topLeft,
                        child: Text('What do you wanna learn today ?')),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.blue)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 20, right: 20),
                        child: Row(children: [
                          Image(
                            image: AssetImage('assets/images/icon2.png'),
                            width: 50,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Programs',
                            style: TextStyle(fontSize: 18, color: Colors.blue),
                          ),
                        ]),
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.blue)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 20, right: 20),
                        child: Row(children: [
                          Image(
                            image: AssetImage('assets/images/icon3.png'),
                            width: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Get Help',
                            style: TextStyle(fontSize: 18, color: Colors.blue),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.blue)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 30, right: 43),
                        child: Row(children: [
                          Image(
                            image: AssetImage('assets/images/icon4.png'),
                            width: 40,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Learn',
                            style: TextStyle(fontSize: 18, color: Colors.blue),
                          ),
                        ]),
                      ),
                    ),

                    ///
                    Container(
                      // padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.blue)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 10, right: 15),
                        child: Row(children: [
                          Image(
                            image: AssetImage('assets/images/icon5.png'),
                            width: 40,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'DD Tracker',
                            style: TextStyle(fontSize: 18, color: Colors.blue),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ]),
            ),
            SizedBox(
              height: 40,
            ),

            //c2
            Container(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Text(
                  'Programs for you',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 130,
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Colors.grey,
                )
              ]),
            ),
            SizedBox(
              height: 10,
            ),

            //c4

            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // card1
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 10,
                        child: Column(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Image(
                              image:
                                  AssetImage('assets/images/lifestyleimg.png'),
                              width: 300,
                            ),
                          ),
                          Container(
                            width: 300,
                            // height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Color.fromARGB(255, 250, 250, 250)),
                            child: Column(children: [
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Text(
                                  'LIFESTYLE',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Text(
                                  'A complete guide for your',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 130),
                                child: Text(
                                  'new born baby',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Text(
                                  '16 lessons',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ]),
                          )
                        ]),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 20,
                        child: Column(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Image(
                              image:
                                  AssetImage('assets/images/lifestyleimg.png'),
                              width: 300,
                            ),
                          ),
                          Container(
                            width: 300,
                            // height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Color.fromARGB(255, 250, 250, 250)),
                            child: Column(children: [
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Text(
                                  'LIFESTYLE',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Text(
                                  'A complete guide for your',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 130),
                                child: Text(
                                  'new born baby',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Text(
                                  '16 lessons',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ]),
                          )
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Card(
                      elevation: 20,
                      child: Column(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image(
                            image: AssetImage('assets/images/lifestyleimg.png'),
                            width: 300,
                          ),
                        ),
                        Container(
                          width: 300,
                          // height: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              color: Color.fromARGB(255, 250, 250, 250)),
                          child: Column(children: [
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 200),
                              child: Text(
                                'LIFESTYLE',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text(
                                'A complete guide for your',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 130),
                              child: Text(
                                'new born baby',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 200),
                              child: Text(
                                '16 lessons',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ]),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Text(
                  'Events and Experiences',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 75,
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Colors.grey,
                )
              ]),
            ),

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ////////////////////////////////////////////
                    // card1
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 10,
                        child: Column(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Image(
                              image: AssetImage('assets/images/yogaimg.png'),
                              width: 300,
                            ),
                          ),
                          Container(
                            width: 300,
                            // height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Color.fromARGB(255, 250, 250, 250)),
                            child: Column(children: [
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Text(
                                  'BABYCARE',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 45),
                                child: Text(
                                  'Understanding of human',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 180),
                                child: Text(
                                  'behaviour',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 70, left: 15),
                                    child: Text(
                                      '13 Feb, Sunday',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          side: BorderSide(color: Colors.blue),
                                          foregroundColor: Colors.blue),
                                      onPressed: () {},
                                      child: Text('Book'))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ]),
                          )
                        ]),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 10,
                        child: Column(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Image(
                              image: AssetImage('assets/images/yogaimg.png'),
                              width: 300,
                            ),
                          ),
                          Container(
                            width: 300,
                            // height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Color.fromARGB(255, 250, 250, 250)),
                            child: Column(children: [
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Text(
                                  'BABYCARE',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 45),
                                child: Text(
                                  'Understanding of human',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 180),
                                child: Text(
                                  'behaviour',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 70, left: 15),
                                    child: Text(
                                      '13 Feb, Sunday',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          side: BorderSide(color: Colors.blue),
                                          foregroundColor: Colors.blue),
                                      onPressed: () {},
                                      child: Text('Book'))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ]),
                          )
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 10,
                        child: Column(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Image(
                              image: AssetImage('assets/images/yogaimg.png'),
                              width: 300,
                            ),
                          ),
                          Container(
                            width: 300,
                            // height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Color.fromARGB(255, 250, 250, 250)),
                            child: Column(children: [
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Text(
                                  'BABYCARE',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 45),
                                child: Text(
                                  'Understanding of human',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 180),
                                child: Text(
                                  'behaviour',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 70, left: 15),
                                    child: Text(
                                      '13 Feb, Sunday',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          side: BorderSide(color: Colors.blue),
                                          foregroundColor: Colors.blue),
                                      onPressed: () {},
                                      child: Text('Book'))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ]),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Text(
                  'Lessons for you',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 140,
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Colors.grey,
                )
              ]),
            ),

            ////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 10,
                        child: Column(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Image(
                              image: AssetImage('assets/images/yogaimg.png'),
                              width: 300,
                            ),
                          ),
                          Container(
                            width: 300,
                            // height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Color.fromARGB(255, 250, 250, 250)),
                            child: Column(children: [
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Text(
                                  'BABYCARE',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 45),
                                child: Text(
                                  'Understanding of human',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 180),
                                child: Text(
                                  'behaviour',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 200, left: 15),
                                    child: Text(
                                      '3 min',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Icon(Icons.lock_outline)
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ]),
                          )
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 10,
                        child: Column(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Image(
                              image: AssetImage('assets/images/yogaimg.png'),
                              width: 300,
                            ),
                          ),
                          Container(
                            width: 300,
                            // height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Color.fromARGB(255, 250, 250, 250)),
                            child: Column(children: [
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Text(
                                  'BABYCARE',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 45),
                                child: Text(
                                  'Understanding of human',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 180),
                                child: Text(
                                  'behaviour',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 200, left: 15),
                                    child: Text(
                                      '1 min',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Icon(Icons.lock_outline)
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ]),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
