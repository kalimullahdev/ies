import 'package:flutter/material.dart';
import 'package:ies/presentation/base/custom_rounded_button.dart';
import 'package:ies/presentation/base/custom_text_field.dart';
import 'package:ies/utill/dimensions.dart';

class BookSlotScreen extends StatefulWidget {
  const BookSlotScreen({Key? key}) : super(key: key);

  @override
  _BookSlotScreenState createState() => _BookSlotScreenState();
}

class _BookSlotScreenState extends State<BookSlotScreen> {
  final FocusNode _fullNameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _dateFocus = FocusNode();
  final FocusNode _noOfPeopleFocus = FocusNode();
  final FocusNode _specialRequestFocus = FocusNode();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _specialRequestController =
      TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _noOfPeopleController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
                child: Center(
                  child: Container(
                    width: _width > 700 ? 700 : _width,
                    padding: _width > 700
                        ? const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT)
                        : null,
                    decoration: _width > 700
                        ? BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 1)
                            ],
                          )
                        : null,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Book Marriage",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Your name",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                        CustomTextFieldWidget(
                          hintText: 'John Doe',
                          controller: _fullNameController,
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
                        Text(
                          "Your email",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                        CustomTextFieldWidget(
                          hintText: 'name12@example.com',
                          controller: _emailController,
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
                        Text(
                          "Phone number",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                        CustomTextFieldWidget(
                          hintText: '+94 123 4567890',
                          controller: _emailController,
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
                        Text(
                          "Choice date",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                        CustomTextFieldWidget(
                          hintText: '04/19/2022',
                          controller: _dateController,
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
                        Text(
                          "Choice time",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                        CustomTextFieldWidget(
                          hintText: '9:34PM',
                          controller: _dateController,
                        ),
                        const SizedBox(height: 22),
                        Text(
                          "Number of Peoples",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                        CustomTextFieldWidget(
                          hintText: '12',
                          controller: _noOfPeopleController,
                        ),
                        Text(
                          "Special Request",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                        CustomTextFieldWidget(
                          hintText: 'Special Request',
                          controller: _specialRequestController,
                        ),
                        const SizedBox(height: 22),
                        const SizedBox(height: 10),
                        Center(
                          child: CustomRoundedButton(
                            buttonText: "BOOK NOW",
                            onpressed: () {
                              String _fullName =
                                  _fullNameController.text.trim();
                              String _email = _emailController.text.trim();
                              String _date = _dateController.text.trim();
                              String _noOfPeople =
                                  _noOfPeopleController.text.trim();
                              String _specialRequest =
                                  _specialRequestController.text.trim();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
