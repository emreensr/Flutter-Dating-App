import 'package:dating_app/screens/onboarding/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Start extends StatelessWidget {
  final TabController tabController;

  const Start({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                    width: 200,
                    child: SvgPicture.asset('assets/couple.svg')
                ),
                SizedBox(height: 50),
                Text(
                  'Welcome To Arrow',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(height: 20),
                Text(
                  'Arrow at its core is a social discovery platform, and every swipe or match on Tinder represents the possibility of starting something exciting – whether it\'s an epic friendship, crazy adventure or a heartwarming love story. And it all starts with your profile and bio.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6!.copyWith(height: 1.8),
                ),
              ],
            ),
            CustomButton(tabController: tabController,text: 'START',)
          ],
        )
    );
  }
}
