import 'package:flutter/material.dart';
import 'package:ies/presentation/screens/signin/signin.dart';
import 'package:ies/utill/color_resources.dart';
import 'package:ies/utill/images.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscureText = true;
  IconData _iconVisible = Icons.visibility_off;

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
      if (_obscureText == true) {
        _iconVisible = Icons.visibility_off;
      } else {
        _iconVisible = Icons.visibility;
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.fromLTRB(30, 120, 30, 30),
      children: <Widget>[
        Center(
            child: Image.asset(
          Images.logo,
          height: 150,
        )),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: ColorResources.colorPrimary,
          ),
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(color: ColorResources.textColor1),
          decoration: const InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: ColorResources.colorPrimary, width: 2.0)),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorResources.underlineColor,
              ),
            ),
            labelText: 'Email',
            labelStyle: TextStyle(color: ColorResources.textColor2),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          style: const TextStyle(color: ColorResources.textColor1),
          decoration: const InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: ColorResources.colorPrimary, width: 2.0)),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorResources.underlineColor,
              ),
            ),
            labelText: 'Name',
            labelStyle: TextStyle(color: ColorResources.textColor2),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          obscureText: _obscureText,
          style: const TextStyle(color: ColorResources.textColor1),
          decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(
                borderSide:
                    BorderSide(color: ColorResources.colorPrimary, width: 2.0)),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorResources.underlineColor,
              ),
            ),
            labelText: 'Password',
            labelStyle: const TextStyle(color: ColorResources.textColor2),
            suffixIcon: IconButton(
                icon: Icon(_iconVisible, color: Colors.grey[400], size: 20),
                onPressed: () {
                  _toggleObscureText();
                }),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) => ColorResources.colorPrimary,
              ),
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
              )),
            ),
            onPressed: () {
              // Fluttertoast.showToast(msg: 'Click register', toastLength: Toast.LENGTH_SHORT);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'REGISTER',
                style: TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            )),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: GestureDetector(
            onTap: () {
              // Fluttertoast.showToast(msg: 'Click back to login', toastLength: Toast.LENGTH_SHORT);
              FocusScope.of(context).unfocus();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.arrow_back,
                    size: 16, color: ColorResources.colorPrimary),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SigninScreen(),
                      )),
                  child: const Text(
                    ' Back to SigIn',
                    style: TextStyle(
                      color: ColorResources.colorPrimary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
