import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui_rewardapp_loginfeed/partners.dart';
import 'package:flutterui_rewardapp_loginfeed/partners.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          body: Column(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(15.0, 45.0, 15.0, 15.0),
                      alignment: Alignment.topLeft,
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(30))),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 22.0),
                      child: Column(
                        children: [
                          Text(
                            'Hello Zain!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              style: TextStyle(
                                fontSize: 12,
                              ),
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.add_location,
                                    size: 15.0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'How is my work?',
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 120.0,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(top: 12.0),
                    child: Icon(
                      Icons.search,
                      size: 35.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 20.0,
                  child: Container(
                    color: Colors.grey[100],
                  )),
              Container(
                height: 170.0,
                margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your Next Events',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'View More',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 150.0,
                      child: GridView(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 1 / 2,
                            crossAxisSpacing: 1,
                            mainAxisSpacing: 1
                        ),
                        children: [
                              _buildCard(
                                  'Business Head person',
                                  'Mon Jul 18, 12:00 PM',
                                  'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
                                  1),
                          _buildCard(
                              'Business Head Zain',
                              'Mon Jul 18, 12:00 PM',
                              'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
                              2),
                      ]
                      ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                  height: 20.0,
                  child: Container(
                    color: Colors.grey[100],
                  )),
              Row(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Container(
                            margin: EdgeInsets.all(20.0),
                            width: 320.0,
                            height: 260.0,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15))),
                        Container(
                            // alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 220.0, left: 35.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    ' Business Head Meeting',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Mon Jul 18, 12:00  pm - EcoWorld, CA',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ])),
                      ],
                    ),
                  ),
                ],
              ),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.calendar_view_day_sharp,
                        size: 23.0,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: ' Register',
                    )
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.white,
            color: Colors.lightBlueAccent,
            buttonBackgroundColor: Colors.white,
            items: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 22.0),
                child: Column(
                  children: [
                    Icon(Icons.home, size: 30),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 22.0),
                child: Column(
                  children: [
                    Icon(Icons.add_alert, size: 30),
                    Text(
                      'Services',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 22.0),
                child: Column(
                  children: [
                    Icon(Icons.apartment_rounded, size: 30),
                    Text(
                      'Partners',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 22.0),
                child: Column(
                  children: [
                    Icon(Icons.local_activity, size: 30),
                    Text(
                      'Activity',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),

              // Icon(Icons.home, size: 30),
              // Icon(Icons.add_alert, size: 30),
              // Icon(Icons.apartment_rounded, size: 30),
              // Icon(Icons.local_activity, size: 30),
            ],
            animationDuration: Duration(
              microseconds: 400,
            ),
            index: 0,
            animationCurve: Curves.bounceInOut,
            onTap: (index) {
              // debugPrint("Current index is $index");
              if(index == 2){
                debugPrint("Current index is $index");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => partnersPage()),
                );
              }
            },
          ),
        ));
  }

  Widget _buildCard(String title, String date, String image, int index) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
      elevation: 0.0,
      child: Container(
        child: Stack(
          children: [
            Container(
                // margin: EdgeInsets.all(20.0),
                width: 320.0,
                height: 260.0,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15)
                  )
                  ),
            Container(
                // alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(top: 100.0, left: 20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        date,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ])),
          ],
        ),
      ),
    );
  }
}
