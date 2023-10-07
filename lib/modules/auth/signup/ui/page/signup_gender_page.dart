import 'package:app/constants/constants.dart';
import 'package:app/modules/auth/signup/ui/page/signup_age_page.dart';
import 'package:app/modules/auth/signup/ui/page/signup_email_page.dart';
import 'package:app/modules/auth/signup/ui/widget/gender_choice_widget.dart';
import 'package:app/modules/auth/signup/ui/widget/show_gender_widget.dart';
import 'package:app/shared/widgets/app_button_widgets.dart';
import 'package:app/shared/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class SignupGenderPage extends StatelessWidget {
  const SignupGenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: PaddingValues.page,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomHeaderOne(
                text: "Please select your gender preferences",
                textAlign: TextAlign.center,
              ),
              Space.h48,
              const Text(
                "How do you identify?",
                textAlign: TextAlign.center,
              ),
              Space.h8,
              const SizedBox(
                width: double.maxFinite,
                child: GenderChoiceButton(),
              ),
              Space.h8,
              const Text(
                "What do you want to see?",
                textAlign: TextAlign.center,
              ),
              Space.h8,
              const SizedBox(
                width: double.maxFinite,
                child: ShowMeGenderButton(),
              ),
              Space.h24,
              Spacer(),
          SizedBox(
              width: double.maxFinite,
              child: AppButton(text: "Continue",onPressed: ()=>{
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignupAgePage(),
                  ),
                )
              },)),
              Space.h8,
              const Text(
                "Please note that gender you prefer will not be shown to other people",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
