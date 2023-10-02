import 'package:app/modules/auth/signup/ui/widget/gender_choice_widget.dart';
import 'package:app/modules/auth/signup/ui/widget/show_gender_widget.dart';
import 'package:flutter/material.dart';

class SignupGenderPage extends StatelessWidget {
  const SignupGenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Please select your gender preferences",
                style: TextStyle(
                  fontFamily: "YoungSerif",
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 48,
              ),
              Text(
                "How do you identify?",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(
                width: double.maxFinite,
                child: GenderChoiceButton(),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "What do you want to see?",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
               const SizedBox(
                width: double.maxFinite,
                child: ShowMeGenderButton(),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.maxFinite,
                child: FilledButton(onPressed: ()=>{},
                     child: Text("Continue")),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Please not that gender you prefer will not be shown to other people",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
