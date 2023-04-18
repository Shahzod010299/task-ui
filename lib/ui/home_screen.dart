import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromRGBO(6, 49, 75, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 64,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Uptrain',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 9,
                                      ),
                                      Text(
                                        'Book your next train!',
                                        style: TextStyle(
                                          color: Colors.white38,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2.0, color: Colors.white12),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                100.0) //                 <--- border radius here
                                            ),
                                      ), //
                                      child: Container(
                                        margin: EdgeInsets.all(12),
                                        child: notifyIcon(),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      '>> One Way',
                                      style: TextStyle(
                                          color: Color.fromRGBO(6, 49, 75, 1)),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              8), // <-- Radius
                                        ),
                                        backgroundColor: Colors.yellow),
                                  ),
                                  SizedBox(width: 12),
                                  OutlinedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.autorenew,
                                        color: Colors.white38,
                                      ),
                                      label: Text(
                                        '>> Round trip',
                                        style: TextStyle(color: Colors.white38),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        side: const BorderSide(
                                          width: 2.0,
                                          color: Colors.white24,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          // <-- Radius
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      flex: 4,
                    ),
                    Expanded(
                        flex: 5,
                        child: Container(
                          color: Colors.white,
                        ))
                  ],
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(),
                        flex: 6,
                      ),
                      Expanded(
                          flex: 11,
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              elevation: 0.8,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(14, 14, 14, 14),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Stack(
                                      children: [
                                        Column(
                                          children: [
                                            myWidgetTrain('New York, NW'),
                                            myWidgetTrain('Boston, MA'),
                                          ],
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 24),
                                            width: double.infinity,
                                            height: 160,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                FloatingActionButton(
                                                  onPressed: () {},
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          226, 255, 255, 255),
                                                  elevation: 0,
                                                  child: Image.asset(
                                                    'lib/images/trafic.png',
                                                    width: 22,
                                                    height: 22,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    myWidgetCalandar('Thu, Oct 20'),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.all(8),
                                      height: 60,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Search Train',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      12), // <-- Radius
                                            ),
                                            backgroundColor: Color.fromRGBO(
                                                28, 190, 141, 1)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )),
                      Expanded(
                        flex: 7,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Popular Routes',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(6, 49, 75, 1)),
                                    ),
                                    Text(
                                      'See all',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black38),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Expanded(
                                    child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    listItem(
                                        'https://www.riotgames.com/darkroom/1440/fc8fa58e6fa9f6a700e559b2fa77a6b5:ec35063e6ce89a1e7619585db51c5845/paris-adobestock-327345878.png',
                                        'Lodon To Paris',
                                        '39.74',
                                        '5'),
                                    listItem(
                                        'https://cdn.britannica.com/26/116526-050-76C37BBC/Cathedral-of-St-Basil-the-Blessed-Moscow.jpg',
                                        'Samarkand to Moscow',
                                        '29.66',
                                        '4.8'),
                                    listItem(
                                        'https://images.unsplash.com/photo-1570521462033-3015e76e7432?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dG9raW98ZW58MHx8MHx8&w=1000&q=80',
                                        'Moscow to Tokio',
                                        '35.5',
                                        '3.6'),
                                    listItem(
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/London_Big_Ben_Phone_box.jpg/640px-London_Big_Ben_Phone_box.jpg',
                                        'Seul to London',
                                        '44.44',
                                        '4.5'),
                                  ],
                                )),
                                SizedBox(
                                  height: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget myWidgetTrain(String title) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(6.0),
        padding: const EdgeInsets.all(12.0),
        decoration: myBoxDecoration(), //             <--- BoxDecoration here
        child: Row(
          children: [
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.train,
              color: Colors.black45,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              '|',
              style: TextStyle(fontSize: 34, color: Colors.black12),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 24,
                  color: Color.fromRGBO(6, 49, 75, 1),
                  fontWeight: FontWeight.w400),
            ),
          ],
        ));
  }

  Widget myWidgetCalandar(String title) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(6.0),
        padding: const EdgeInsets.all(6.0),
        decoration: myBoxDecoration(), //             <--- BoxDecoration here
        child: Row(
          children: [
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.calendar_month,
              color: Colors.black45,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              '|',
              style: TextStyle(fontSize: 34, color: Colors.black12),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              title,
              style:
                  TextStyle(fontSize: 24, color: Color.fromRGBO(6, 49, 75, 1)),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'return ?',
                        style: TextStyle(color: Colors.black38),
                      ),
                      Switch.adaptive(
                          value: isSwitch,
                          onChanged: (newValue) {
                            setState(() {
                              isSwitch = !isSwitch;
                            });
                          })
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 8,
            ),
          ],
        ));
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(width: 2.0, color: Colors.black12),
      borderRadius: BorderRadius.all(
          Radius.circular(12.0) //                 <--- border radius here
          ),
    );
  }

  Widget notifyIcon() {
    return Stack(
      children: <Widget>[
        Icon(Icons.notifications_outlined, color: Colors.white),
        Positioned(
          right: 0,
          child: new Container(
            padding: EdgeInsets.all(1),
            decoration: new BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(6),
            ),
            constraints: BoxConstraints(
              minWidth: 12,
              minHeight: 12,
            ),
            child: new Text(
              '',
              style: new TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }

  Card listItem(String urlImage, String title, String price, String reting) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 12,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 8, 0, 8),
            child: Container(
              height: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child: Image.network(urlImage,
                      height: double.infinity, fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0.0, 8, 0, 8),
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(6, 49, 75, 1)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.black38),
                    ),
                    Text(
                      '$price \$',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(6, 49, 75, 1)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0.0, 8, 0, 8),
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  reting,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(6, 49, 75, 1)),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
