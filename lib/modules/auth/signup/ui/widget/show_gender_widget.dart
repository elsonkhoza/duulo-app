import 'package:flutter/material.dart';

class ShowMeGenderButton extends StatefulWidget {
  const ShowMeGenderButton({super.key});

  @override
  State<ShowMeGenderButton> createState() => _ShowMeGenderButtonState();
}
enum Gender { man, woman,both }
class _ShowMeGenderButtonState extends State<ShowMeGenderButton> {
  Gender currentGender = Gender.man;
  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Gender>(
      segments: const <ButtonSegment<Gender>>[
        ButtonSegment<Gender>(value: Gender.man, label: Text("Men")),
        ButtonSegment<Gender>(value: Gender.woman, label: Text("Women")),
        ButtonSegment<Gender>(value: Gender.both, label: Text("Both")),
      ],
      selected: <Gender>{currentGender},
      showSelectedIcon: false,
      style: ButtonStyle(
        backgroundColor:
        MaterialStateColor.resolveWith((Set<MaterialState> states) {
          return states.contains(MaterialState.selected)
              ? Colors.black87
              : Colors.white;
        }),
        foregroundColor:
        MaterialStateColor.resolveWith((Set<MaterialState> states) {
          return states.contains(MaterialState.selected)
              ? Colors.white
              : Colors.black54;
        }),
      ),
      onSelectionChanged: (Set<Gender> newGender) {
        setState(() {
          currentGender = newGender.first;
        });
      },
    );
  }
}
