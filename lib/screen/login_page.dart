import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Widget textField({required String hintText, required IconData icon, required Color iconColor}) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: iconColor ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Text(
                'Đăng nhập', 
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: 40, fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                textField(
                  hintText: "Username",
                  icon: Icons.person_outlined,
                  iconColor: Colors.black,
                ),
                SizedBox(height: 30,),
      
                textField(
                  hintText: "Password",
                  icon: Icons.lock_outline,
                  iconColor: Colors.black,
                ),
              ],
            ),
            Container(
              height: 60,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Đăng nhập',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Nếu chưa có tài khoản, mời bạn đăng ký",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
      
                Text(
                  "Đăng ký",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}