import 'package:flutter/material.dart';
import 'package:wahy_gomart/view/homescreen/widgets/customtextformfield.dart';
import 'package:wahy_gomart/view/sign_in_screen/signin_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(240),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 150),
        child: Container(
          // height: 350,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset(
                      "assets/png/login.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Go",
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "mart",
                            style: TextStyle(
                                color: Color(0xFF03AC13),
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SigninScreen(),
                                  ));
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Customtextformfield(hintText: "Fullname"),
                      SizedBox(
                        height: 15,
                      ),
                      Customtextformfield(hintText: "Email address"),
                      SizedBox(
                        height: 15,
                      ),
                      Customtextformfield(hintText: "Mobile Number"),
                      SizedBox(
                        height: 15,
                      ),
                      Customtextformfield(
                        hintText: "Password",
                        isPassword: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //create account button
                      Container(
                        height: 50,
                        width: 240,
                        child: Center(
                          child: Text(
                            "Create account",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFF03AC13),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "By signing up, I agree to",
                              style: TextStyle(
                                  color: Colors.black.withAlpha(150),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Terms of Use and Privacy Policy",
                              style: TextStyle(
                                  color: Colors.black.withAlpha(150),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.grey.shade200, offset: Offset(5, 5))
          ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        ),
      ),
    );
  }
}
