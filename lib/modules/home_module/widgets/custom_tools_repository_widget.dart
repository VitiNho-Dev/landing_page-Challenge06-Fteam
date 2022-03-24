import 'package:flutter/material.dart';

class CustomToolsRepositoryWidget extends StatelessWidget {
  const CustomToolsRepositoryWidget({
    Key? key,
    required this.texts,
  }) : super(key: key);

  final List<Text> texts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ferramentas Utilizadas',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: texts,
          ),
        ],
      ),
    );
  }
}
