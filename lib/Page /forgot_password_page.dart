import 'package:expense_trackers/Widget/main_button.dart';
import 'package:expense_trackers/Widget/text_fild.dart';
import 'package:expense_trackers/core/colors.dart';
import 'package:expense_trackers/core/space.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SizedBox (
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_sharp),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Forgot Password?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text(
                      "Dont worry it occurs to us all. We will send you a link to reset your password.",
                      style: TextStyle(
                        color: Color(0xff8391A1),
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                      )),
                ),
                textFild(
                  controller:  _emailController,
                  keyBordType: TextInputType.emailAddress,
                  image: 'user.svg',
                  hintTxt: 'Email Address',
                ),

               SpaceVH(height: 80.0),
                  Mainbutton(
                   onTap: () {},
                   text: 'Send Code',
                   btnColor: blueButton,
               ),
              ],
            ),
          ),
        ));
  }
}