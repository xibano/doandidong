import 'package:flutter/material.dart';
class Signup extends StatelessWidget {
  Widget textField({required String hintText}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget button({ required String buttonName, required Color color, required Color textColor}) {
    return Container(
      width: 120,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          primary: color,
        ),
        onPressed: () {},
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Đăng ký",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),

              Container(
                height:300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textField(hintText: "Name"),
                    textField(hintText: "UserName"),
                    textField(hintText: "Mật khẩu"),
                    textField(hintText: "Nhập lại mật khẩu"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button(
                    buttonName: "Thoát", 
                    color: Colors.grey,
                    textColor: Colors.black,
                  ),
                  
                  SizedBox(
                    width: 10,
                  ),

                  button(
                    buttonName: "Đăng ký", 
                    color: Colors.red, 
                    textColor: Colors.white,
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