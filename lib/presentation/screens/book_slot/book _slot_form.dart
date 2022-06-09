import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:ies/presentation/base/custom_rounded_button.dart';
import 'package:ies/presentation/base/custom_text_field.dart';
import 'package:ies/utill/color_resources.dart';
import 'package:ies/utill/dimensions.dart';

class BookSlotForm extends StatelessWidget {
  const BookSlotForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.whiteColor,
        title: const Center(
          child: Text(
            "Book slot",
            style: TextStyle(
              fontSize: Dimensions.FONT_SIZE_LARGE,
              color: Colors.black,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Select hall",
                style: TextStyle(
                  // fontFamily: 'default',
                  fontSize: Dimensions.FONT_SIZE_LARGE,
                  fontWeight: FontWeight.w500,
                ),
              ),
              DropDown(
                items: const [
                  "Hall No 1",
                  "Hall No 2",
                  "Hall No 3",
                ],
                hint: const Text("Choose hall"),
                icon: const Icon(
                  Icons.expand_more,
                  color: Colors.blue,
                ),
                onChanged: print,
              ),
            ],
          ),
          const CustomTextField(
            hintText: "Number of Guests",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Select event time",
                style: TextStyle(
                  // fontFamily: 'default',
                  fontSize: Dimensions.FONT_SIZE_LARGE,
                  fontWeight: FontWeight.w500,
                ),
              ),
              DropDown(
                items: const ["12 PM", "2 PM", "3 PM"],
                hint: const Text("Choose time"),
                icon: const Icon(
                  Icons.expand_more,
                  color: Colors.blue,
                ),
                onChanged: print,
              ),
            ],
          ),
          Center(
            child: CustomRoundedButton(
              buttonText: "Next",
              onpressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
