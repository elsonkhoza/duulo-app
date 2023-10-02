import 'package:app/modules/auth/signup/ui/page/signup_gender_page.dart';
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
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Who should we call you?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
              fontFamily: "YoungSerif",
              fontSize: 24,
            ),
                ),
                const SizedBox(height: 8),
                Text("This is how you will appear on you profile",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 24),
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
                        builder: (context) => const SignupGenderPage(),
                        ),
                        )
                        }, child: const Text("Create Account"))),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                    width: double.maxFinite,
                    child: OutlinedButton(
                        onPressed: () => {},
                        child: const Text("Signup using Google"))),
                const SizedBox(
                  height: 8,
                ),
                TextButton(
                    onPressed: () => {},
                    child: const Text("Already have an account?")),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Your data will never be shared with anyone without your permission",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
