import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:ticket_widget/ticket_widget.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(6, 49, 75, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        flexibleSpace: Container(
          color: Color.fromRGBO(6, 49, 75, 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 64,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    Text(
                      'Boaring Pass',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            ClipPath(
              clipper: DolDurmaClipper(bottom: 105, holeRadius: 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 520,
                padding: EdgeInsets.all(35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(children: [
                          Image.asset(
                            'lib/images/img_ac.png',
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 4),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Acela',
                                style: TextStyle(
                                    color: Color.fromRGBO(6, 49, 75, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '2248 acela',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          )
                        ]),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      '_______________________________________',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New York, NY',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'Boston, MA',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'NYP',
                          style: TextStyle(
                            fontSize: 28,
                            color: Color.fromRGBO(6, 49, 75, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                          child: FlutterSlider(
                            values: [400],
                            max: 500,
                            min: 0,
                            onDragging: (handlerIndex, lowerValue, upperValue) {
                              setState(() {});
                            },
                            trackBar: FlutterSliderTrackBar(
                              inactiveTrackBar: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black12,
                                border:
                                    Border.all(width: 3, color: Colors.blue),
                              ),
                              activeTrackBar: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.blue.withOpacity(0.5)),
                            ),
                          ),
                        ),
                        Text(
                          'BBY',
                          style: TextStyle(
                            fontSize: 28,
                            color: Color.fromRGBO(6, 49, 75, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New York, NY',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'Boston, MA',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Text(
                      '_______________________________________',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Train No ',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'Class                ',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'Ticket ID',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '224MP',
                          style: TextStyle(
                              color: Color.fromRGBO(6, 49, 75, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Business',
                          style: TextStyle(
                              color: Color.fromRGBO(6, 49, 75, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'A098674',
                          style: TextStyle(
                              color: Color.fromRGBO(6, 49, 75, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Passenger ',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'Seat           ',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'Baggage',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1 Adult',
                          style: TextStyle(
                              color: Color.fromRGBO(6, 49, 75, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Seat 3C',
                          style: TextStyle(
                              color: Color.fromRGBO(6, 49, 75, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '20kg',
                          style: TextStyle(
                              color: Color.fromRGBO(6, 49, 75, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Text(
                      '------------------------------------',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 18),
                    ),
                    Image.network(
                      'https://images.sftcdn.net/images/t_app-cover-s,f_auto/p/d16301c4-9b77-11e6-a35f-00163ec9f5fa/666378955/precisionid-code128-barcode-fonts-screenshot.jpg',
                      height: 90,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Download Ticket'),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Color.fromARGB(255, 62, 145, 65)),
              ),
            )
          ],
        ),
      ),
    );
  }

  TicketWidget ticket_ui_widget() {
    return TicketWidget(
      width: double.infinity,
      height: 550.0,
      isCornerRounded: true,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: [
                  Image.asset(
                    'lib/images/img_ac.png',
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 4),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Acela',
                        style: TextStyle(
                            color: Color.fromRGBO(6, 49, 75, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '2248 acela',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w300),
                      ),
                    ],
                  )
                ]),
              ],
            ),
            SizedBox(height: 12),
            Text(
              '____________________________________________',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New York, NY',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w300),
                ),
                Text(
                  'Boston, MA',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'NYP',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color.fromRGBO(6, 49, 75, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(
                  child: FlutterSlider(
                    values: [400],
                    max: 500,
                    min: 0,
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      setState(() {});
                    },
                    trackBar: FlutterSliderTrackBar(
                      inactiveTrackBar: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                        border: Border.all(width: 3, color: Colors.blue),
                      ),
                      activeTrackBar: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.blue.withOpacity(0.5)),
                    ),
                  ),
                ),
                Text(
                  'BBY',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color.fromRGBO(6, 49, 75, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New York, NY',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w300),
                ),
                Text(
                  'Boston, MA',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Text(
              '____________________________________________',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New York, NY',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w300),
                ),
                Text(
                  'Boston, MA',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Flight Ticket',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 75.0, right: 75.0),
              child: Text(
                '9824 0972 1742 1298',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget ticketDetailsWidget(String firstTitle, String firstDesc,
      String secondTitle, String secondDesc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                firstTitle,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  firstDesc,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                secondTitle,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  secondDesc,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class DolDurmaClipper extends CustomClipper<Path> {
  DolDurmaClipper({required this.bottom, required this.holeRadius});

  final double bottom;
  final double holeRadius;

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0.0, size.height - bottom - holeRadius)
      ..arcToPoint(
        Offset(0, size.height - bottom),
        clockwise: true,
        radius: Radius.circular(1),
      )
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - bottom)
      ..arcToPoint(
        Offset(size.width, size.height - bottom - holeRadius),
        clockwise: true,
        radius: Radius.circular(1),
      );

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(DolDurmaClipper oldClipper) => true;
}
