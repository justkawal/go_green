import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, IconData> map = {
    "Every 7 days": Icons.timelapse,
    "Needs sun": Icons.wb_sunny,
    "Minimum of 1°C": Icons.whatshot
  };
  int selectedSizeIndex = 0;

  List<String> sizeList = ["10\"", "15\"", "20\"", "25\""];

  Widget sizeWidget(int index) {
    return GestureDetector(
      onTap: () {
        selectedSizeIndex = index;
        setState(() {});
      },
      child: Container(
        width: 84,
        height: 84,
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: selectedSizeIndex == index ? Colors.white : Color(0xFF0f323b),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            sizeList[index],
            style: TextStyle(
                color: selectedSizeIndex == index
                    ? Color(0xFF234e51)
                    : Color(0xFF68a9bb),
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget getDetails(String text, int color) {
    return Container(
      height: 36,
      padding: EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
          color: Color(color), borderRadius: BorderRadius.circular(11)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }

  Widget getRows(String key) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(
            map[key],
            size: 28,
            color: Color(0xFF7bb06d),
          ),
          SizedBox(width: 10),
          Text(
            key,
            style: TextStyle(color: Color(0xFFd8e8eb), fontSize: 20),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(55),
                        bottomLeft: Radius.circular(55)),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: Color(0xFF091e25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.bottomLeft,
                                  padding:
                                      EdgeInsets.only(left: 20, bottom: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(Icons.arrow_back,
                                        size: 40, color: Color(0xFF7ab06e)),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 5,
                                        child: Container(
                                          padding: EdgeInsets.only(left: 30),
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Rubber Tree",
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 36,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 4,
                                        child: Container(
                                          padding: EdgeInsets.only(left: 30),
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Robust and dramatic, with glossy leaves",
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 3,
                                            style: TextStyle(
                                              color: Color(0xFFb0bcc1),
                                              fontSize: 22,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Expanded(
                                                    child: getDetails(
                                                        "Easy to grow",
                                                        0xFF71a861),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Expanded(
                                                    child: getDetails(
                                                        "Air cleaner",
                                                        0xFF4f95a7),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Expanded(
                                                    child: getDetails(
                                                        "Pet friendly",
                                                        0xFFa8a96b),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Expanded(
                                                    child: getDetails(
                                                        "26\"-38\"tall",
                                                        0xFF569476),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 6,
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10),
                                          padding: EdgeInsets.only(
                                              top: 4, left: 40, bottom: 4),
                                          alignment: Alignment.topCenter,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF0f323b),
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40),
                                                bottomRight:
                                                    Radius.circular(40)),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children:
                                                map.entries.map((MapEntry map) {
                                              return getRows(map.key);
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 6,
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 35, top: 10, bottom: 7),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width: double.infinity,
                                        child: Text(
                                          "Choose the size",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 29,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        height: 80,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: sizeList
                                              .asMap()
                                              .entries
                                              .map((MapEntry map) {
                                            return sizeWidget(map.key);
                                          }).toList(),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 5,
                                child: Container(),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(),
                                      ),
                                      Expanded(
                                        flex: 11,
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned.directional(
                                                textDirection:
                                                    TextDirection.ltr,
                                                start: -64,
                                                top: -156,
                                                child: Transform.scale(
                                                  scale: 0.63,
                                                  child: Image(
                                                    image: AssetImage(
                                                        "assets/images/plant.png"),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 5,
                                        child: Container(),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Add to Cart - ',
                          style: TextStyle(
                              color: Color(0xFF1c494b),
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: '\$55',
                              style: TextStyle(
                                color: Color(0xFF6aa558),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
