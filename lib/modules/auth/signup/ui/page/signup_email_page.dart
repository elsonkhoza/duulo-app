import 'package:app/constants/constants.dart';
import 'package:app/modules/home/page/home_page.dart';
import 'package:app/shared/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class SignupEmailOrPhonePage extends StatelessWidget {
  const SignupEmailOrPhonePage({super.key});

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
              const CustomHeaderOne(text: "We are getting there, what is your email?",
                textAlign: TextAlign.center,
              ),
              Space.h24,
              const Text("We will use this email to verify your account"),
              Space.h48,
              const TextField(
                decoration: InputDecoration(
                    hintText: "example@email.com"
                ),
              ),
              Space.h24,
              const Spacer(),
              SizedBox(
                  width: double.maxFinite,
                  child: FilledButton(
                      onPressed: ()=>{
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    )
                  }, child: Text("Continue")
                  ,
                  )

              ),
              Space.h8
              ,
              const Text("We will not reveal your email to others")

            ],
          ),
        ),
      ),

    );
  }
}
