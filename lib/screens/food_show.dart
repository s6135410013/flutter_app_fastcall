import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/fooddata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodShow extends StatefulWidget {
  //สร้างตัวแปรที่เก็บค่าจากค่าที่ส่งมาหน้าFoodList
  String name = '';
  String website = '';
  String facebook = '';
  String mobile = '';
  String image = '';
  //constructure รับค่าที่ส่งมาจากหน้าFoodList กำหนดให้ตัวแปรข้างบน
  FoodShow({
    Key? key,
    required this.name,
    required this.website,
    required this.facebook,
    required this.mobile,
    required this.image,
  }) : super(key: key);

  @override
  _FoodShowState createState() => _FoodShowState();
}

class _FoodShowState extends State<FoodShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[400],
        title: Text(
          "Details",
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            //โค้ดย้อนกลับไปก่อนหน้า
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/' + widget.image,
                width: 150,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 20,
                child: Card(
                  color: Colors.redAccent[100],

                  elevation: 10,
                  shadowColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  //elevation: 10,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            Text('  Name:  ' + widget.name),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.red[900],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.globeAsia,
                              color: Colors.black,
                            ),
                            Text('  Website:  ' + widget.website),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  FontAwesomeIcons.desktop,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.red[900],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.black,
                            ),
                            Text('  Facebook:  ' + widget.facebook),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Like",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.red[900],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.mobileAlt,
                              color: Colors.black,
                            ),
                            Text('  Mobile:  ' + widget.mobile),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.globeAsia),
                    label: Text(
                      " Website",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent[400],
                      fixedSize: Size(120, 50),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.phoneAlt),
                    label: Text(
                      " Call",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent[400],
                      fixedSize: Size(120, 50),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.mapMarkedAlt,
                    ),
                    label: Text(
                      " Map",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent[400],
                      fixedSize: Size(120, 50),
                    ),
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
