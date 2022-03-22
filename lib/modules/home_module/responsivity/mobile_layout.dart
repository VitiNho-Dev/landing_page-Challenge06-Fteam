import 'package:flutter/material.dart';
import 'package:landing_page/utils/url.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue.shade200,
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: const [
              CircleAvatar(
                backgroundImage: NetworkImage(profileImageUrl),
                radius: 50,
              ),
              SizedBox(height: 50),
              Text('Victor Henrique de Oliveira')
            ],
          ),
        ),
      ),
    );
  }
}
