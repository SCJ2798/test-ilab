import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilabtest/utill/extensions.dart';
import 'package:ilabtest/view/style/button_style.dart';
import 'package:ilabtest/view/style/text_input_borders.dart';
import 'package:ilabtest/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

class SignInViewPage extends StatefulWidget {
  const SignInViewPage({super.key});

  @override
  State<SignInViewPage> createState() => _SignInViewPageState();
}

class _SignInViewPageState extends State<SignInViewPage> {
  bool isPasswordNotShow = true;

  final _formKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();
  final _pswTextController = TextEditingController();

  @override
  void dispose() {
    _emailTextController.dispose();
    _pswTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svg/linkedin_logo.svg',
                  width: 96.0,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close))
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              "Sign In",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            RichText(
                text: TextSpan(
              text: "or ",
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.pushNamed(context, '/join'),
                  onEnter: (event) {},
                  text: "Join Linkedin",
                  style: const TextStyle(color: Colors.blue),
                )
              ],
            )),
            const SizedBox(height: 24),

            // Form
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            // Email
                            TextFormField(
                              style: const TextStyle(fontSize: 12),
                              controller: _emailTextController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "email is required";
                                }

                                if (!value.isValidEmail()) {
                                  return "This isn't valid email format , please enter correct one";
                                }

                                return null;
                              },
                              decoration:
                                  const TextInputDecoration.common("Email"),
                            ),
                            const SizedBox(height: 16),
                            // Password
                            TextFormField(
                              obscureText: isPasswordNotShow,
                              controller: _pswTextController,
                              style: const TextStyle(fontSize: 12),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Password is required";
                                }

                                if (!value.hasrequiredLength()) {
                                  return "Password should be has atleast 8 characters";
                                }

                                return null;
                              },
                              decoration: TextInputDecoration.common(
                                "Password",
                                suffix: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isPasswordNotShow = !isPasswordNotShow;
                                    });
                                  },
                                  child: Text(
                                    isPasswordNotShow ? 'Show' : 'Hide',
                                    style: const TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(height: 28),
                    GestureDetector(
                        onTap: () {},
                        child: const Text("Forgot Password",
                            style:
                                TextStyle(fontSize: 12, color: Colors.blue))),
                    const SizedBox(height: 28),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 1,
                      child: ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            try {
                              await Provider.of<AuthViewModel>(context,
                                      listen: false)
                                  .login(
                                      _emailTextController.text.toLowerCase(),
                                      _pswTextController.text);

                              await Future.delayed(const Duration(seconds: 1));
                              if (!context.mounted) return;
                              Navigator.pushNamed(context, '/home');
                            } catch (e) {
                              log(e.toString());
                              await Future.delayed(const Duration(seconds: 1));
                              if (!context.mounted) return;
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Something went Wrong")));
                            }
                          }
                        },
                        style: TButtonStyle.common(),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
