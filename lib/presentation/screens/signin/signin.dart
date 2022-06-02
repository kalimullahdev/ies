import 'package:flutter/material.dart';
import 'package:ies/presentation/screens/home/home.dart';
import 'package:ies/presentation/screens/signup/signup.dart';
import 'package:ies/utill/color_resources.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
          'assets/images/logo.png',
          height: 130,
        )),
        const SizedBox(
          height: 80,
        ),
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              )),
          child: const Text(
            'Sign In',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: ColorResources.colorPrimary,
            ),
          ),
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(
            color: ColorResources.textColor1,
          ),
          decoration: const InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: ColorResources.colorPrimary,
              width: 2.0,
            )),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorResources.underlineColor,
              ),
            ),
            labelText: 'Email',
            labelStyle: TextStyle(
              color: ColorResources.textColor2,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          obscureText: _obscureText,
          style: const TextStyle(
            color: ColorResources.textColor1,
          ),
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
            labelStyle: const TextStyle(
              color: ColorResources.textColor2,
            ),
            suffixIcon: IconButton(
                icon: Icon(_iconVisible, color: Colors.grey[400], size: 20),
                onPressed: () {
                  _toggleObscureText();
                }),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: GestureDetector(
                onTap: () {
                  // Fluttertoast.showToast(
                  //     msg: 'Click forgot password',
                  //     toastLength: Toast.LENGTH_SHORT);
                  FocusScope.of(context).unfocus();
                },
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: ColorResources.colorPrimary, fontSize: 13),
                ),
              ),
            )),
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
              // Fluttertoast.showToast(
              //     msg: 'Click login', toastLength: Toast.LENGTH_SHORT);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    )),
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            )),
        const SizedBox(
          height: 40,
        ),
        const Center(
          child: Text(
            'Or sign in with',
            style: TextStyle(
              fontSize: 13,
              color: ColorResources.textColor3,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  // Fluttertoast.showToast(
                  //     msg: 'Signin with google',
                  //     toastLength: Toast.LENGTH_SHORT);
                },
                child: const Image(
                  image: AssetImage("assets/images/google.png"),
                  width: 40,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Fluttertoast.showToast(
                  //     msg: 'Signin with facebook',
                  //     toastLength: Toast.LENGTH_SHORT);
                },
                child: const Image(
                  image: AssetImage("assets/images/facebook.png"),
                  width: 40,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Fluttertoast.showToast(
                  //     msg: 'Signin with twitter',
                  //     toastLength: Toast.LENGTH_SHORT);
                },
                child: const Image(
                  image: AssetImage("assets/images/twitter.png"),
                  width: 40,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: GestureDetector(
            onTap: () {
              // Fluttertoast.showToast(
              //     msg: 'Click signup', toastLength: Toast.LENGTH_SHORT);
              FocusScope.of(context).unfocus();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'No account yet? ',
                  style: TextStyle(
                    fontSize: 13,
                    color: ColorResources.textColor3,
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupScreen(),
                      )),
                  child: const Text(
                    'Create one',
                    style: TextStyle(
                        fontSize: 13, color: ColorResources.colorPrimary),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
