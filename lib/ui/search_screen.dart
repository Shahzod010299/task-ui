import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Tab> tabs = <Tab>[
    Tab(text: 'Oct 18'),
    Tab(text: 'Oct 19'),
    Tab(text: 'Oct 20'),
    Tab(text: 'Oct 21'),
    Tab(text: 'Oct 22'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(6, 49, 75, 1),
      child: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.white,
            child: DefaultTabController(
              length: tabs.length,
              child: Builder(builder: (BuildContext context) {
                final TabController tabController =
                    DefaultTabController.of(context);
                tabController.addListener(() {
                  if (!tabController.indexIsChanging) {}
                });
                return Scaffold(
                  appBar: AppBar(
                    toolbarHeight: 200,
                    flexibleSpace: Container(
                      color: Color.fromRGBO(6, 49, 75, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 64,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 9,
                                    ),
                                    Icon(
                                      Icons.filter_alt_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'New York, NY',
                                      style: TextStyle(
                                        color: Colors.white38,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Text(
                                      'Boston, MA',
                                      style: TextStyle(
                                        color: Colors.white38,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 45,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'NYP',
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Expanded(
                                      child: FlutterSlider(
                                        values: [300],
                                        max: 500,
                                        min: 0,
                                        onDragging: (handlerIndex, lowerValue,
                                            upperValue) {
                                          setState(() {});
                                        },
                                        trackBar: FlutterSliderTrackBar(
                                          inactiveTrackBar: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.black12,
                                            border: Border.all(
                                                width: 3, color: Colors.blue),
                                          ),
                                          activeTrackBar: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              color:
                                                  Colors.blue.withOpacity(0.5)),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'BBY',
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    bottom: TabBar(
                      labelColor: Colors.yellow,
                      unselectedLabelColor: Colors.white24,
                      indicatorColor: Colors.yellow,
                      labelStyle: TextStyle(
                        fontSize: 16.0,
                      ), //For Selected tab
                      unselectedLabelStyle: TextStyle(fontSize: 14.0),
                      tabs: tabs,
                    ),
                  ),
                  body: TabBarView(children: [
                    tabItemBarScreen('Oct 18'),
                    tabItemBarScreen('Oct 19'),
                    tabItemBarScreen('Oct 20'),
                    tabItemBarScreen('Oct 21'),
                    tabItemBarScreen('Oct 22'),
                  ]),
                );
              }),
            ),
          ))
        ],
      ),
    );
  }

  Widget tabItemBarScreen(String title) {
    if (title == 'Oct 20') {
      return ListView(
        children: [
          tabDateItem('lib/images/img_ac.png', 'Acela', '02:40 AM', '07:53 AM',
              '5h 13m', '1 tronsform', '\$ 115.00', 'Cheapest'),
          tabDateItem('lib/images/img_amtrak.jpg', 'Amtrak', '02:40 AM',
              '07:53 AM', '5h 13m', '0 tronsform', '\$ 220.00', '2nd Cheapest'),
          tabDateItem('lib/images/img_ac.png', 'Acela', '02:40 AM', '07:53 AM',
              '5h 13m', '2 tronsform', '\$ 115.00', '2nd Cheapest'),
          tabDateItem('lib/images/img_amtrak.jpg', 'Amtrak', '02:40 AM',
              '07:53 AM', '5h 13m', '0 tronsform', '\$ 220.00', '2nd Cheapest'),
          tabDateItem('lib/images/img_ac.png', 'Acela', '02:40 AM', '07:53 AM',
              '5h 13m', '1 tronsform', '\$ 115.00', 'Cheapest'),
          tabDateItem('lib/images/img_amtrak.jpg', 'Amtrak', '02:40 AM',
              '07:53 AM', '5h 13m', '0 tronsform', '\$ 220.00', '2nd Cheapest'),
          tabDateItem('lib/images/img_ac.png', 'Acela', '02:40 AM', '07:53 AM',
              '5h 13m', '2 tronsform', '\$ 115.00', '2nd Cheapest'),
          tabDateItem('lib/images/img_amtrak.jpg', 'Amtrak', '02:40 AM',
              '07:53 AM', '5h 13m', '0 tronsform', '\$ 220.00', '2nd Cheapest'),
        ],
      );
    }

    return Center(
      child: Text('$title , no data'),
    );
  }

  Widget tabDateItem(
      String imageUrl,
      String logoTitle,
      String date1,
      String date2,
      String time,
      String transform,
      String price,
      String cheapest) {
    return Container(
      height: 250,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        imageUrl,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        logoTitle,
                        style: TextStyle(
                            color: Color.fromRGBO(6, 49, 75, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color.fromARGB(255, 219, 255, 220)),
                    onPressed: () {},
                    child: Text(
                      cheapest,
                      style: TextStyle(color: Colors.green),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    date1,
                    style: TextStyle(
                        color: Color.fromRGBO(6, 49, 75, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'jjjjjjj',
                    style: TextStyle(
                        color: Color.fromRGBO(6, 49, 75, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    date2,
                    style: TextStyle(
                        color: Color.fromRGBO(6, 49, 75, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Penn Station',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'South Station',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Text(
                '---------------------------------------------------------',
                style: TextStyle(
                  color: Colors.black26,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color.fromARGB(255, 247, 247, 247)),
                    onPressed: () {},
                    child: Text(
                      transform,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                        color: Color.fromRGBO(6, 49, 75, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
