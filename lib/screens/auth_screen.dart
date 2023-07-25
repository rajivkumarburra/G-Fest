import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  static const routeName = '/auth-screen';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isSignupPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person,
                  size: 70,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: GlowingOverscrollIndicator(
                axisDirection: AxisDirection.down,
                color: Colors.black,
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Text(
                            isSignupPage ? 'Sign Up' : 'Login',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              fontFamily: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        isSignupPage
                            ? Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextFormField(
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    label: Text(
                                      'Name',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.bold,
                                        ).fontFamily,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !value.contains('@')) {
                                      return 'Please enter a valid email address.';
                                    }
                                    return null;
                                  },
                                ),
                              )
                            : Container(),
                        isSignupPage
                            ? Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextFormField(
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    label: Text(
                                      'Phone Number',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.bold,
                                        ).fontFamily,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !value.contains('@')) {
                                      return 'Please enter a valid email address.';
                                    }
                                    return null;
                                  },
                                ),
                              )
                            : Container(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              label: Text(
                                'Email',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                  ).fontFamily,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty || !value.contains('@')) {
                                return 'Please enter a valid email address.';
                              }
                              return null;
                            },
                          ),
                        ),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height * 0.01,
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            cursorColor: Colors.black,
                            obscureText: true,
                            decoration: InputDecoration(
                              label: Text(
                                'Password',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                  ).fontFamily,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a valid password.';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.95,
                          height: MediaQuery.of(context).size.height * 0.07,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/tabs');
                            },
                            child: Text(
                              isSignupPage ? 'Sign Up' : 'Login',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                ).fontFamily,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              isSignupPage
                                  ? 'Already have an account?'
                                  : 'Don\'t have an account?',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: GoogleFonts.montserrat().fontFamily,
                                color: Colors.black,
                              ),
                            ),
                            TextButton(
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all<Color>(
                                  Colors.black.withOpacity(0.1),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  isSignupPage = !isSignupPage;
                                });
                              },
                              child: Text(
                                isSignupPage ? 'Login' : 'Sign Up',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                  ).fontFamily,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
