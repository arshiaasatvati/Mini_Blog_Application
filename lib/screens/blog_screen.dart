import 'package:flutter/material.dart';
import 'package:mini_blog_application/custom_widgets/signal_widget.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});

  final blogWidgetList = [
    getSignalCard(
        imageName: 's.png',
        title: 'سیگنال خرید SafeMoon برای ۱۴ آبان',
        buyPrice: 'خرید روی ۱۲،۴۲۶',
        sellPrice: 'فروش روی ۱۳،۲۹۰'),
    getSignalCard(
        imageName: 'a.png',
        title: 'سیگنال خرید Alchemy برای ۱۲ آبان',
        buyPrice: 'خرید روی ۱،۲۳۴',
        sellPrice: 'فروش روی ۱،۵۴۲'),
    getSignalCard(
        imageName: 'c.png',
        title: 'سیگنال خرید Cosmos برای ۱۱ آبان',
        buyPrice: 'خرید روی ۱۴،۲۱',
        sellPrice: 'فروش روی ۱۵،۳۲'),
    getSignalCard(
        imageName: 'r.png',
        title: 'سیگنال خرید Ripple برای ۹ آبان',
        buyPrice: 'خرید روی ۵۲،۳۲۱',
        sellPrice: 'فروش روی ۶۰،۱۲۳'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'اخبار و سیگنال',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...blogWidgetList,
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'خروج از حساب',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
