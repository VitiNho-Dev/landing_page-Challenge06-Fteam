import 'package:flutter/material.dart';

class CustomInformationReposiotryWidget extends StatelessWidget {
  const CustomInformationReposiotryWidget({
    Key? key,
    required this.name,
    required this.sobre,
    this.onPressed,
  }) : super(key: key);

  final String name;
  final String sobre;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 32),
          Text(
            sobre,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: TextButton(
                onPressed: onPressed,
                child: Text(
                  'Acessar o repositorio',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
