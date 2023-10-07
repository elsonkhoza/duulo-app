import 'package:app/constants/constants.dart';
import 'package:app/modules/auth/signup/ui/page/signup_email_page.dart';
import 'package:app/shared/widgets/app_button_widgets.dart';
import 'package:app/shared/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class SignupAgePage extends StatelessWidget {
  const SignupAgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: PaddingValues.page,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomHeaderOne(text: "Okay nice! So when is your birthday?",
              textAlign: TextAlign.center,
              ),
              Space.h24,
              const Text("We will use this to show your age"),
              Space.h48,
              const TextField(
               decoration: InputDecoration(
                 hintText: "dd/mm/yyyy"
               ),
              ),
              Space.h24,
              const Spacer(),
              SizedBox(
                  width: double.maxFinite,
                  child: AppButton(text: "Continue",onPressed: ()=>{
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignupEmailOrPhonePage(),
                      ),
                    )
                  },)),
             Space.h8
              ,
              const Text("We will not reveal your date of birth to others")

            ],
          ),
        ),
      ),

    );
  }
}
