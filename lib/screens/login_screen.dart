import 'package:flutter/material.dart';
import 'package:mini_blog_application/screens/blog_screen.dart';
import 'package:mini_blog_application/screens/forgot_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'خوش آمدید',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.login,
                    ),
                  ],
                ),
                Image(
                  image: AssetImage('images/welcome.png'),
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    _screenNavigator(context: context, pageRoute: BlogScreen());
                  },
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      width: 2,
                      color: Colors.white,
                    ),
                    foregroundColor: Colors.white,
                    minimumSize: Size(200, 40),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 40),
                      elevation: 4,
                      backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Text(
                    'ثبت نام',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _screenNavigator(
                        context: context, pageRoute: ForgotPasswordScreen());
                  },
                  child: Text(
                    'رمز خود را فراموش کرده اید؟',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
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

  void _screenNavigator({
    required BuildContext context,
    required pageRoute,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => pageRoute,
      ),
    );
  }
}
