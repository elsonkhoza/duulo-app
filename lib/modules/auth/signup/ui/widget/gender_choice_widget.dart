import 'package:flutter/material.dart';

class GenderChoiceButton extends StatefulWidget {
  const GenderChoiceButton({super.key});

  @override
  State<GenderChoiceButton> createState() => _GenderChoiceButtonState();
}

enum Gender { man, woman }

class _GenderChoiceButtonState extends State<GenderChoiceButton> {
  Gender currentGender = Gender.man;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Gender>(
      segments: const <ButtonSegment<Gender>>[
        ButtonSegment<Gender>(value: Gender.man, label: Text("Man")),
        ButtonSegment<Gender>(value: Gender.woman, label: Text("Woman")),
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
