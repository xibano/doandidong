import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
  Widget button({ required String name, required Color color}) {
    return Container(
      height: 45,
      width: 300,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(name),
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child:Center(
                child: Image.asset('images/logo.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Kính chào quý khách", 
                    style: TextStyle(
                    fontSize: 30, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.green
                    ),
                  ),
                  Column(
                    children: [
                      Text("Gọi món từ nhà hàng của chúng tôi và"),
                      Text("theo yêu cầu theo thời gian thực")
                    ],
                  ),
                  button(
                    name:'Đăng nhập',
                    color: Colors.green
                  ),
                  button(
                    name: 'Đăng ký',
                    color: Colors.transparent
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}