import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../widgets/widgets.dart';

class Biography extends StatelessWidget {
   final TabController tabController;

   const Biography({
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
              CustomTextHeader(tabController: tabController,text: 'Describe Yourself a Bit',),
              CustomTextField(tabController: tabController,text: 'ENTER YOUR BIO'),
              SizedBox(height:100),
              CustomTextHeader(tabController: tabController,text: 'What Do You Like?'),
              Row(
                children: [
                  CustomTextContainer(tabController: tabController, text: 'MUSIC'),
                  CustomTextContainer(tabController: tabController, text: 'TRAVEL'),
                  CustomTextContainer(tabController: tabController, text: 'SWIMMING'),
                  CustomTextContainer(tabController: tabController, text: 'READING'),
                ],
              ),
              Row(
                children: [
                  CustomTextContainer(tabController: tabController, text: 'MUSIC'),
                  CustomTextContainer(tabController: tabController, text: 'TRAVEL'),
                  CustomTextContainer(tabController: tabController, text: 'SWIMMING'),
                  CustomTextContainer(tabController: tabController, text: 'READING'),
                ],
              ),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 5,
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
