import 'package:flutter/material.dart';
import 'package:landing_page/modules/home_module/widgets/custom_app_bar_widget.dart';
import 'package:landing_page/modules/home_module/responsivity/web_layout/widgets/custom_card_repository_widget.dart';
import 'package:landing_page/theme/app_colors.dart';
import 'package:landing_page/utils/url.dart';
import 'package:url_launcher/url_launcher.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBarWidget(),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 100,
        ),
        children: [
          CustomCardRepositoryWidget(
            size: size,
            image1: 'assets/images/Screenshot_20220324-154709.jpg',
            image2: 'assets/images/Screenshot_20220324-154730.jpg',
            image3: 'assets/images/Screenshot_20220324-154758.jpg',
            name: 'App Masterclass',
            sobre: 'Um app feito durante a Masterclass de Flutter iniciante.',
            onPressed: () async {
              if (await canLaunch(masterclassAppUrl)) {
                await launch(masterclassAppUrl);
              } else {
                throw 'Could not launch Maps';
              }
            },
            items: [
              Text(
                'Dart',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Flutter',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'ChangeNotifier',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'ValueNotifier',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Dio',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const SizedBox(height: 32),
          Divider(
            color: AppColors.textColor.withOpacity(0.5),
          ),
          const SizedBox(height: 32),
          CustomCardRepositoryWidget(
            size: size,
            image1: 'assets/images/Screenshot_20220324-110907.jpg',
            image2: 'assets/images/Screenshot_20220324-110957.jpg',
            image3: 'assets/images/Screenshot_20220324-110937.jpg',
            name: 'Movie App',
            sobre: 'Quinto desafio da Fteam feito com Triple, Modular e Uno.',
            onPressed: () async {
              if (await canLaunch(movieAppUrl)) {
                await launch(movieAppUrl);
              } else {
                throw 'Could not launch Maps';
              }
            },
            items: [
              Text(
                'Dart',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Flutter',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Modular',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Triple',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Uno',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const SizedBox(height: 32),
          Divider(
            color: AppColors.textColor.withOpacity(0.5),
          ),
          const SizedBox(height: 32),
          CustomCardRepositoryWidget(
            size: size,
            image1: 'assets/images/Screenshot_20220324-151919.jpg',
            image2: 'assets/images/Screenshot_20220324-152107.jpg',
            image3: 'assets/images/Screenshot_20220324-152242.jpg',
            name: 'App Qlorian',
            sobre:
                'Segundo desafio da Fteam concluído, utilizando Mascaras com Regex.',
            onPressed: () async {
              if (await canLaunch(qlorianAppUrl)) {
                await launch(qlorianAppUrl);
              } else {
                throw 'Could not launch Maps';
              }
            },
            items: [
              Text(
                'Dart',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Flutter',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Regex',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const SizedBox(height: 32),
          Divider(
            color: AppColors.textColor.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
