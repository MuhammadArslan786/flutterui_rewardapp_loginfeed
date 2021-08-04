import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterui_rewardapp_loginfeed/home.dart';

class partnersPage extends StatefulWidget {
  @override
  _partnersPageState createState() => _partnersPageState();
}

class _partnersPageState extends State<partnersPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      initialIndex: 1,
      child: new Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              centerTitle: false,
              titleSpacing: 0.0,
              toolbarHeight: 120.0,
              title: Transform(
                transform: Matrix4.translationValues(-35.0, 0.0, 0.0),
                child: Text('Partners',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
               ),
              ),
              actions: [
                Container(
                    margin: EdgeInsets.only(top: 15.0, right: 15.0),
                    child: Text.rich(
                      TextSpan(
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                                text: 'EcoWorld',
                                style: TextStyle(color: Colors.blue)),
                            WidgetSpan(
                              child: Icon(
                                Icons.add_location,
                                size: 15.0,
                                color: Colors.blue,
                              ),
                            ),
                          ]),
                    ))
              ],
            bottom: PreferredSize(
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.black.withOpacity(0.3),
                indicatorColor: Colors.blue,
                  labelColor: Colors.blue,
                  tabs: [
                    Tab(
                      // child: Text('',),
                        icon: Icon(Icons.home),
                      text: 'All',
                    ),
                    Tab(
                      icon: Icon(Icons.accessibility),
                      text: 'Fashion',
                    ),
                    Tab(
                      icon: Icon(Icons.add_a_photo),
                      text: 'Tech',
                    ),
                    Tab(
                      icon: Icon(Icons.agriculture_rounded),
                      text: 'Travel',
                    ),
                    Tab(
                      icon: Icon(Icons.media_bluetooth_on),
                      text: 'Movies',
                    ),
                    Tab(
                      icon: Icon(Icons.forward),
                      text: 'More',
                    ),
                  ]),
                preferredSize: Size.fromHeight(30.0)),
              
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 60.0,
                margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0,top: 12.0),
                alignment: Alignment.centerLeft,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Colors.white, width: 1.0)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: "Search Patners",
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                  height: 15.0,
                  child: Container(
                    color: Colors.grey[100],
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.fromLTRB(10.0,15.0,15.0,10.0),
                  child: Text(
                    'Top Offers',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                )
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 370.0,
                child: GridView(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 360.0,
                        childAspectRatio: 1.4,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2
                    ),
                    children: [
                      _buildCardPatners(
                          'Uber Eats',
                          '25 % Off',
                          'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
                          1),
                      _buildCardPatners(
                          'Zara 2019',
                          '10 % Off',
                          'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
                          2),
                    ]
                ),
              ),
            ],
          ),

          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.white,
            color: Colors.lightBlueAccent,
            buttonBackgroundColor: Colors.white,
            height: 70.0,
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
            index: 2,
            animationCurve: Curves.bounceInOut,
            onTap: (index) {
              // debugPrint("Current index is $index");
              if(index == 0){
                debugPrint("Current index is $index");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homePage()),
                );
              }
            },
          ),
      ),
    );
  }
}

Widget _buildCardPatners(String title, String date, String image, int index) {
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)),
    elevation: 0.0,
    child: Container(
      child: Stack(
        children: [
          Container(
            // margin: EdgeInsets.all(20.0),
              width: double.infinity,
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
              margin: EdgeInsets.only(top: 30.0, left: 20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        date,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ])),
               Container(
                margin: EdgeInsets.only(top: 220.0),
                width: 70.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                  ),
                  color: Colors.white,
                ),

                child: Center(
                  child: Text(
                    'REDEEM',
                    style: TextStyle(
                        fontWeight:  FontWeight.bold,
                        fontFamily: 'Montserrat',
                        fontSize: 12.0
                    ),
                  ),
                )
              )
        ],
      ),
    ),
  );
}