import 'package:flutter/material.dart';
import 'package:ies/utill/color_resources.dart';
import 'package:ies/utill/dimensions.dart';

class CustomRoundedButton extends StatelessWidget {
  final String buttonText;
  final double width;
  final Function onpressed;
  final LinearGradient linearGradient;

  const CustomRoundedButton({
    Key? key,
    required this.buttonText,
    this.width = 120,
    required this.onpressed,
    this.linearGradient = ColorResources.blueLinearGradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 4),
              blurRadius: 5.0,
            )
          ],
          gradient: linearGradient,
          borderRadius: BorderRadius.circular(40),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            splashFactory: NoSplash.splashFactory,
            minimumSize: MaterialStateProperty.all(Size(width, 0)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            onpressed();
          },
          child: Text(
            buttonText,
            style: const TextStyle(
              color: ColorResources.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
