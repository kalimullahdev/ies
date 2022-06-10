import 'package:flutter/material.dart';
import 'package:ies/utill/color_resources.dart';
import 'package:ies/utill/dimensions.dart';

class FirstBookSlotTabBarScreen extends StatefulWidget {
  const FirstBookSlotTabBarScreen({Key? key}) : super(key: key);

  @override
  State<FirstBookSlotTabBarScreen> createState() =>
      _FirstBookSlotTabBarScreenState();
}

class _FirstBookSlotTabBarScreenState extends State<FirstBookSlotTabBarScreen> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  double getHeight(BuildContext context) => MediaQuery.of(context).size.height;

  String? _chosenHall;
  String? _chosenTime;
  TextEditingController numberCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(context) * .05, vertical: 10),
        children: [
          const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
          const Text('Select Hall'),
          SizedBox(height: getHeight(context) * .01),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Colors.black38)),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: DropdownButton(
                underline: const SizedBox(),
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: const [
                  "Hall No 1 - 100 Guests",
                  "Hall No 2 - 200 Guests",
                  "Hall No 3 - 500 Guests",
                ].map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      maxLines: 2,
                    ),
                  );
                }).toList(),
                value: _chosenHall,
                style: const TextStyle(color: ColorResources.blackColor),
                hint: const Text(
                  "Select your Hall",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _chosenHall = value;
                  });
                },
              ),
            ),
          ),
          SizedBox(height: getHeight(context) * .02),
          const Text('Enter Number of Guests'),
          SizedBox(height: getHeight(context) * .01),
          CreateCustomField(
              text: 'Number of Guests',
              controller: numberCont,
              keyBoardType: TextInputType.number),
          SizedBox(height: getHeight(context) * .02),
          const Text('Select Event Time'),
          SizedBox(height: getHeight(context) * .01),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Colors.black38)),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: DropdownButton(
                underline: const SizedBox(),
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: const [
                  "12 PM",
                  "2 PM",
                  "5 PM",
                ].map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      maxLines: 2,
                    ),
                  );
                }).toList(),
                value: _chosenTime,
                style: const TextStyle(color: Colors.red),
                hint: const Text(
                  "Select Event Time",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _chosenTime = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CreateCustomField extends StatefulWidget {
  final Widget? icon;
  final String text;
  final TextEditingController controller;
  final bool isObscure, enabled;
  final String? Function(String?)? validator;
  final TextInputType keyBoardType;
  final TextInputAction inputAction;
  final String label;
  final int lines, minLines;
  final Color? borderColor;
  final Color? iconColor;
  final TextCapitalization textCapitalization;

  const CreateCustomField({
    Key? key,
    this.icon,
    required this.text,
    required this.controller,
    this.isObscure = false,
    this.validator,
    this.keyBoardType = TextInputType.text,
    this.inputAction = TextInputAction.next,
    this.label = '',
    this.lines = 1,
    this.minLines = 1,
    this.borderColor,
    this.iconColor,
    this.enabled = true,
    this.textCapitalization = TextCapitalization.none,
  }) : super(key: key);

  @override
  State<CreateCustomField> createState() => _CreateCustomFieldState();
}

class _CreateCustomFieldState extends State<CreateCustomField> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  double getHeight(BuildContext context) => MediaQuery.of(context).size.height;

  @override
  void initState() {
    if (widget.label.isNotEmpty) {
      widget.controller.text = widget.label;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      child: TextFormField(
        textCapitalization: widget.textCapitalization,
        enabled: widget.enabled,
        maxLines: widget.lines,
        minLines: widget.minLines,
        controller: widget.controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: widget.keyBoardType,
        textInputAction: widget.inputAction,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(7.0),
          ),
          contentPadding: widget.icon == null
              ? widget.minLines != 1
                  ? const EdgeInsets.only(left: 10, top: 15)
                  : const EdgeInsets.only(left: 10)
              : const EdgeInsets.only(top: 15, bottom: 15),
          prefixIcon: widget.icon == null
              ? null
              : Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: getWidth(context) * .05),
                  child: widget.icon,
                ),
          prefixIconConstraints: const BoxConstraints(maxHeight: 25),
          hintText: widget.text,
          alignLabelWithHint: true,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
        obscureText: widget.isObscure,
        validator: widget.validator,
      ),
    );
  }
}
