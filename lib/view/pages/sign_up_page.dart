import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilabtest/utill/constant.dart';
import 'package:ilabtest/utill/extensions.dart';
import 'package:ilabtest/view/style/text_input_borders.dart';
import 'package:ilabtest/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

class SignUpViewPage extends StatefulWidget {
  const SignUpViewPage({super.key});

  @override
  State<SignUpViewPage> createState() => _SignUpViewPageState();
}

class _SignUpViewPageState extends State<SignUpViewPage> {
  bool isPasswordNotShow = true;

  final _formKey = GlobalKey<FormState>();

  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _pswTextController = TextEditingController();

  @override
  void dispose() {
    _firstNameTextController.dispose();
    _lastNameTextController.dispose();
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
              "Sign Up",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            RichText(
                text: const TextSpan(
              text: "or ",
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: "Sign In",
                  style: TextStyle(color: Colors.blue),
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
                              controller: _firstNameTextController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "First Name is required";
                                }

                                return null;
                              },
                              decoration: const TextInputDecoration.common(
                                  "First Name"),
                            ),
                            const SizedBox(height: 16),
                            TextFormField(
                              controller: _lastNameTextController,
                              style: const TextStyle(fontSize: 12),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Last Name is required";
                                }

                                return null;
                              },
                              decoration:
                                  const TextInputDecoration.common("Last Name"),
                            ),
                            const SizedBox(height: 16),
                            TextFormField(
                              controller: _emailTextController,
                              style: const TextStyle(fontSize: 12),
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
                            TextFormField(
                              controller: _pswTextController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Password is required";
                                }

                                if (!value.hasrequiredLength()) {
                                  return "Password should be has atleast 8 characters";
                                }

                                return null;
                              },
                              obscureText: isPasswordNotShow,
                              style: const TextStyle(fontSize: 12),
                              decoration: TextInputDecoration.common("Password",
                                  suffix: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isPasswordNotShow = !isPasswordNotShow;
                                      });
                                    },
                                    child: Text(
                                      isPasswordNotShow ? 'Show' : 'Hide',
                                      style:
                                          const TextStyle(color: Colors.blue),
                                    ),
                                  )),
                            ),
                            const SizedBox(height: 16),
                            TextFormField(
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    !value.isMatcWithPrevious(
                                        _pswTextController.text)) {
                                  return "Password is not match";
                                }

                                if (!value.hasrequiredLength()) {
                                  return "Password should be has atleast 8 characters";
                                }

                                return null;
                              },
                              obscureText: isPasswordNotShow,
                              style: const TextStyle(fontSize: 12),
                              decoration: const TextInputDecoration.common(
                                  "Confirm Password"),
                            ),
                          ],
                        )),
                    const SizedBox(height: 28),
                    GestureDetector(
                        onTap: () {},
                        child: const Text(
                            "By clicking Agree & Join , you agree to Linkedin's User Agreement , Privacy Policy ans Cookie Policy",
                            style:
                                TextStyle(fontSize: 12, color: Colors.blue))),
                    const SizedBox(height: 28),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 1,
                      child: ElevatedButton(
                        onPressed: () async {
                          try {
                            if (_formKey.currentState!.validate()) {
                              await Provider.of<AuthViewModel>(context,
                                      listen: false)
                                  .register(
                                      _firstNameTextController.text,
                                      _lastNameTextController.text,
                                      _emailTextController.text.toLowerCase(),
                                      _pswTextController.text);
                            }
                          } catch (e) {
                            log(e.toString());
                            await Future.delayed(const Duration(seconds: 1));
                            if (!context.mounted) return;
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Something went Wrong")));
                          }
                        },
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(16)),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(borderRadius)))),
                        child: const Text(
                          "Agree & Join",
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
