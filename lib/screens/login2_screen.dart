import 'package:flutter/material.dart';
import 'package:mini_blog_application/screens/blog_screen.dart';
import 'package:mini_blog_application/screens/forgot_password_screen.dart';
import 'package:mini_blog_application/screens/signup_screen.dart';

class LoginScreen2 extends StatelessWidget {
  const LoginScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'به اپلیکیشن سیگنال خوش آمدید',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.login),
                  ],
                ),
                Image(
                  image: AssetImage('images/w.png'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2),
                      minimumSize: Size(200, 40),
                      foregroundColor: Colors.black),
                  onPressed: () {
                    _navigateScreen(
                      context: context,
                      pageRoute: BlogScreen(),
                    );
                  },
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      minimumSize: Size(200, 40),
                      elevation: 4),
                  onPressed: () {
                    _navigateScreen(
                      context: context,
                      pageRoute: SignupScreen(),
                    );
                  },
                  child: Text(
                    'ثبت نام',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    _navigateScreen(
                      context: context,
                      pageRoute: ForgotPasswordScreen(),
                    );
                  },
                  child: Text(
                    'فراموشی رمز عبور',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _navigateScreen({required context, required pageRoute}) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => pageRoute,
      ),
    );
  }
}
