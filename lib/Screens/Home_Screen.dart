import 'package:fastfoodapp/Components/Home_Screen/List_Category.dart';

import 'package:fastfoodapp/constants.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  // ignore: unused_field
  late TabController _controller;
  @override
  // ignore: must_call_super
  void initState() {
    _controller = TabController(length: 5, vsync: this);
  }

  var iconlist = [
    Icons.home,
    Icons.home,
    Icons.home,
    Icons.home,
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/HomeBackGround.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Today Special',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 26,
                                letterSpacing: 1.3),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Burger!',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                                'https://scontent.fdad3-2.fna.fbcdn.net/v/t1.6435-9/178365630_907943059778049_5694045723792127237_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=mCpk3-YMEyUAX9BCp_V&_nc_oc=AQkNTF0nuxtDRhqCO352CrbPR_7UmkTAAWZoc52cQ21Bz3YD_atcLrujejBb8vAXolbDQyzm9alFDtx7ToeBGQNX&_nc_ht=scontent.fdad3-2.fna&oh=c0642ebdd410683c3cdd2189ef3bce31&oe=61686EFD'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 14),
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      hintText: 'Search burger',
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: TabBar(
                    controller: _controller,
                    labelStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    labelColor: kButtonColor,
                    unselectedLabelColor: Colors.white,
                    indicatorColor: kButtonColor,
                    tabs: const <Widget>[
                      Tab(
                        text: 'Burger',
                      ),
                      Tab(
                        text: 'Pasta',
                      ),
                      Tab(
                        text: 'Chicken',
                      ),
                      Tab(
                        text: 'Drink',
                      ),
                      Tab(
                        text: 'Pizza',
                      ),
                    ]),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 120,
                  child: TabBarView(
                      controller: _controller,
                      children: const <Widget>[
                        ListCategory(),
                        Text('a'),
                        Text('v'),
                        Text('a'),
                        Text('v'),
                      ]),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(19),
                      topRight: Radius.circular(19),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: kButtonColor,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add, color: Colors.white)),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
