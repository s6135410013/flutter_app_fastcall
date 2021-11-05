import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/fooddata.dart';
import 'package:flutter_app_fastcall/screens/food_show.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class FoodLists extends StatefulWidget {
  const FoodLists({Key? key}) : super(key: key);

  @override
  _FoodListsState createState() => _FoodListsState();
}

class _FoodListsState extends State<FoodLists> {
  //โค้ดข้อมูลร้านอาหารซึ่งเกี่ยวข้องกับไฟล์โมเดล fooddata.dart
  List<Fooddata> fooddata = [
    Fooddata(
      name: 'Chesters Grill',
      website: 'http://www.chesters.co.th',
      facebook: 'chesterthai',
      mobile: '1145',
      image: 'f1.jpg',
      gps:
          'https://www.google.com/maps/place/%E0%B8%A7%E0%B8%B1%E0%B8%92%E0%B8%99%E0%B8%B2%E0%B8%9C%E0%B8%A5%E0%B8%B4%E0%B8%95%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B8%A1%E0%B8%B1%E0%B8%99+64+%E0%B8%96.+%E0%B8%9E%E0%B8%A3%E0%B8%B0%E0%B8%A3%E0%B8%B2%E0%B8%A1+2+%E0%B8%95%E0%B8%B3%E0%B8%9A%E0%B8%A5+%E0%B8%99%E0%B8%B2%E0%B8%94%E0%B8%B5+%E0%B8%AD%E0%B8%B3%E0%B9%80%E0%B8%A0%E0%B8%AD%E0%B9%80%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%87%E0%B8%AA%E0%B8%A1%E0%B8%B8%E0%B8%97%E0%B8%A3%E0%B8%AA%E0%B8%B2%E0%B8%84%E0%B8%A3+%E0%B8%AA%E0%B8%A1%E0%B8%B8%E0%B8%97%E0%B8%A3%E0%B8%AA%E0%B8%B2%E0%B8%84%E0%B8%A3+74000/@13.5714697,100.2894916,17.5z',
//พิกัด
    ),
    Fooddata(
      name: 'Narai Pizzeria',
      website: 'http://www.naraipizzeria.com',
      facebook: 'naraipizzeria',
      mobile: '1744',
      image: 'f2.jpg',
      gps:
          'https://www.google.com/maps/place/607+%E0%B8%96%E0%B8%99%E0%B8%99+%E0%B9%80%E0%B8%9E%E0%B8%8A%E0%B8%A3%E0%B9%80%E0%B8%81%E0%B8%A9%E0%B8%A1%E0%B8%AA%E0%B8%B2%E0%B8%A2%E0%B9%80%E0%B8%81%E0%B9%88%E0%B8%B2+%E0%B9%81%E0%B8%82%E0%B8%A7%E0%B8%87+%E0%B8%9A%E0%B8%B2%E0%B8%87%E0%B8%AB%E0%B8%A7%E0%B9%89%E0%B8%B2+%E0%B9%80%E0%B8%82%E0%B8%95%E0%B8%A0%E0%B8%B2%E0%B8%A9%E0%B8%B5%E0%B9%80%E0%B8%88%E0%B8%A3%E0%B8%B4%E0%B8%8D+%E0%B8%81%E0%B8%A3%E0%B8%B8%E0%B8%87%E0%B9%80%E0%B8%97%E0%B8%9E%E0%B8%A1%E0%B8%AB%E0%B8%B2%E0%B8%99%E0%B8%84%E0%B8%A3+10160/@13.7119594,100.4321939,17z',
    ),
    Fooddata(
      name: 'S&P',
      website: 'http://www.snpfood.com',
      facebook: 'snpfood',
      mobile: '1344',
      image: 'f3.jpg',
      gps: 'https://goo.gl/maps/6HvViMWtC2Lb8GNP8',
    ),
    Fooddata(
      name: 'Oishi',
      website: 'http://www.oishifood.com',
      facebook: 'oishifoodstation',
      mobile: '1773',
      image: 'f4.jpg',
      gps: 'https://goo.gl/maps/2UyFxrzjsEhZK7wc8',
    ),
    Fooddata(
      name: 'MK Restaurants',
      website: 'http://www.mkrestaurant.com',
      facebook: 'mkrestaurants',
      mobile: '02-248-5555',
      image: 'f5.jpg',
      gps: 'https://goo.gl/maps/X7prN6DFFGb5aLd37',
    ),
    Fooddata(
      name: 'The Pizza',
      website: 'http://www.1112.com',
      facebook: 'thepizzacompany',
      mobile: '1112',
      image: 'f6.jpg',
      gps: 'https://goo.gl/maps/qtiZMsnaBRRAvRb49',
    ),
    Fooddata(
      name: 'Mc Donals',
      website: 'http://www.mcdonalds.co.th',
      facebook: 'McThai',
      mobile: '1711',
      image: 'f7.jpg',
      gps: 'https://goo.gl/maps/SCB7spmdhdHg1cecA',
    ),
    Fooddata(
      name: 'Pizza Hut',
      website: 'http://www.pizzahut.co.th',
      facebook: 'pizzahutthailand',
      mobile: '1150',
      image: 'f8.jpg',
      gps: 'https://goo.gl/maps/XeKBhcfZvykfjozz6',
    ),
    Fooddata(
      name: 'KFC',
      website: 'http://www.kfc.co.th',
      facebook: 'kfcth',
      mobile: '1150',
      image: 'f9.jpg',
      gps: 'https://goo.gl/maps/rpGAbbmDZz1W5eYZ7',
    ),
    Fooddata(
      name: 'JJ Delivery',
      website: 'http://www.jjdelivery.com',
      facebook: 'jjdelivery',
      mobile: '02-712-3000',
      image: 'f10.jpg',
      gps: 'https://goo.gl/maps/Gq1BEB8xBLQqhHRa6',
    ),
    Fooddata(
      name: 'Burger King',
      website: 'http://www.burgerking.co.th',
      facebook: 'burgerkingthailand',
      mobile: '1112',
      image: 'f11.jpg',
      gps: 'https://goo.gl/maps/qXmArtqAx4aT2ndbA',
    ),
    Fooddata(
      name: 'See Fah',
      website: 'http://www.seefah.com',
      facebook: 'seefahfanpage',
      mobile: '02-800-8080',
      image: 'f12.jpg',
      gps: 'https://goo.gl/maps/HBok6Ke5HNWKtUh18',
    ),
    Fooddata(
      name: 'ฮองมิน',
      website: 'http://www.hongminrestaurant.net',
      facebook: 'hongminfanpage',
      mobile: '02-248-0123',
      image: 'f13.jpg',
      gps: 'https://goo.gl/maps/ieAgF5X7ny9tUnKj7',
    ),
    Fooddata(
      name: 'Yoshinoya',
      website: 'http://www.yoshinoya.co.th',
      facebook: 'YoshinoyaThailand',
      mobile: '02-663-3888',
      image: 'f14.jpg',
      gps: 'https://goo.gl/maps/Nq9TTyCCGAgpDjwp7',
    ),
    Fooddata(
      name: 'ฮั่วเซ่งฮง',
      website: 'http://www.huasenghong.co.th',
      facebook: 'huasenghong',
      mobile: '02-2480123',
      image: 'f15.jpg',
      gps: 'https://g.page/huasenghong-ct?share',
    ),
    Fooddata(
      name: 'Scoozi Pizza',
      website: 'http://www.scoozipizza.com',
      facebook: 'scoozipizzaclub',
      mobile: '02-715-8555',
      image: 'f16.jpg',
      gps: 'https://goo.gl/maps/T6mPXHN16NBn8ZPo7',
    ),
    Fooddata(
      name: 'โดมิโน่ พิซซ่า',
      website: 'http://www.dominospizza.co.th',
      facebook: 'DominosPizzaThailand',
      mobile: '1612',
      image: 'f17.jpg',
      gps: 'https://goo.gl/maps/ykWdkJEsZF7bAW826',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.redAccent[400],
        title: Text(
          "Hungee",
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
          //สร้างแต่ละรายการของ ListView
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                //กดแล้วให้เปิดไปหน้าจอ food_show.dart(FoodShow)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FoodShow(
                      name: fooddata[index].name,
                      website: fooddata[index].website,
                      facebook: fooddata[index].facebook,
                      mobile: fooddata[index].mobile,
                      image: fooddata[index].image,
                      gps: fooddata[index].gps,
                    );
                  }),
                );
              },
              //leading คืออยู่หน้า trailingคืออยู่หลัง
              leading: Image.asset('assets/images/' + fooddata[index].image),
              title: Text(fooddata[index].name),
              subtitle: Text(fooddata[index].mobile),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.redAccent[400],
              ),
            );
          },
          //สร้างเส้นแบ่ง
          separatorBuilder: (context, index) {
            return Divider(
              height: 10,
              color: Colors.deepOrange[200],
            );
          },
          //กำหนดจำนวนรายการใน ListView
          itemCount: fooddata.length),
    );
  }
}
