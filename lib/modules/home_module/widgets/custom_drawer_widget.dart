import 'package:flutter/material.dart';
import 'package:landing_page/utils/url.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(30),
      color: Colors.blue.shade200,
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
    );
  }
}
