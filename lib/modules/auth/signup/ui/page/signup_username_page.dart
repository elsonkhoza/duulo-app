import 'package:app/constants/constants.dart';
import 'package:app/modules/auth/signup/ui/page/signup_gender_page.dart';
import 'package:app/shared/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class SignupUsernamePage extends StatelessWidget {
  const SignupUsernamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/happy_couple_2.jpg"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(),
        body: Padding(
          padding: PaddingValues.page,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Space.h32,
                const CustomHeaderOne(text:  "Who should we call you?"
                  ,textAlign: TextAlign.center,),
                Space.h8,
                Text("This is how you will appear on you profile",
                ),
                Space.h24,
                const TextField(
                  autocorrect: false,
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                    width: double.maxFinite,
                    child: FilledButton(
                        onPressed: () => {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const SignupGenderPage(),
                                ),
                              )
                            },
                        child: const Text("Create Account"))),
                Space.h24,
                SizedBox(
                    width: double.maxFinite,
                    child: OutlinedButton(
                        onPressed: () => {},
                        child: const Text("Signup using Google"))),
               Space.h8,
                TextButton(
                    onPressed: () => {},
                    child: const Text("Already have an account?")),
                Spacer(),
                Text(
                  "Your data will never be shared with anyone without your permission",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
