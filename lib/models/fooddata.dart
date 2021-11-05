//ไฟล์ประเภทโมเดล(ใช้จัดการกับข้อมูล)
import 'package:flutter/cupertino.dart';

class Fooddata {
  String name = '';
  String website = '';
  String facebook = '';
  String mobile = '';
  String image = '';
  String gps;
  Fooddata({
    required this.name,
    required this.website,
    required this.facebook,
    required this.mobile,
    required this.image,
    required this.gps,
  });
}
