import 'package:app/constants/constants.dart';
import 'package:app/modules/auth/signup/ui/page/signup_gender_page.dart';
import 'package:app/shared/widgets/app_button_widgets.dart';
import 'package:app/shared/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class SignupUsernamePage extends StatelessWidget {
  const SignupUsernamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: PaddingValues.page,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomHeaderOne(text:  "Hey, Welcome. What should we call you?"
                ,textAlign: TextAlign.center,),
              Space.h24,
              const Text("This is how you will appear on you profile",
              ),
              Space.h48,
              const TextField(
                autocorrect: false,
              ),
              Space.h24,
            SizedBox(
                width: double.maxFinite,
                child: AppButton(text: "Create Account",onPressed: ()=>{
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignupGenderPage(),
                    ),
                  )
                },)),
              Space.h24,
              TextButton(

                  onPressed: () => {},
                  child: const Text("Already have an account?",style: TextStyle(color: Colors.black),)),
              Spacer(),
              Text(
                "Your data will never be shared with anyone without your permission",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
