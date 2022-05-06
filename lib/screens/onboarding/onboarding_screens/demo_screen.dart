import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../widgets/widgets.dart';

class Demographics extends StatelessWidget {
  final TabController tabController;

  const Demographics({
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(tabController: tabController,text: 'What\s Your Gender?'),
              CustomCheckbox(tabController: tabController,text: 'MALE'),
              CustomCheckbox(tabController: tabController,text: 'FEMALE'),
              SizedBox(height: 100),
              CustomTextHeader(tabController: tabController,text: 'What\s Your Age?'),
              CustomTextField(tabController: tabController, text: 'ENTER YOUR AGE')
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 3,
                selectedColor: Theme.of(context).primaryColor,
                unselectedColor: Theme.of(context).backgroundColor,
              ),
              SizedBox(height: 10),
              CustomButton(tabController: tabController,text: 'NEXT STEP',)
            ],
          ),          ],
      ),
    );
  }
}
