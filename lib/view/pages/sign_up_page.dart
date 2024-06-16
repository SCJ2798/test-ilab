import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilabtest/utill/constant.dart';

class SignUpViewPage extends StatefulWidget {
  const SignUpViewPage({super.key});

  @override
  State<SignUpViewPage> createState() => _SignUpViewPageState();
}

class _SignUpViewPageState extends State<SignUpViewPage> {
  bool isPasswordNotShow = true;

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
                        child: Column(
                      children: [
                        // Email
                        TextFormField(
                          style: const TextStyle(fontSize: 12),
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0)),
                              labelText: "First Name",
                              labelStyle: TextStyle(color: Colors.black)),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          style: const TextStyle(fontSize: 12),
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0)),
                              labelText: "Last Name",
                              labelStyle: TextStyle(color: Colors.black)),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          style: const TextStyle(fontSize: 12),
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0)),
                              labelText: "Email",
                              labelStyle: TextStyle(color: Colors.black)),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          obscureText: isPasswordNotShow,
                          style: const TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0)),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0)),
                              labelText: "Password",
                              labelStyle: const TextStyle(color: Colors.black),
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
                              )),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          obscureText: isPasswordNotShow,
                          style: const TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0)),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0)),
                              labelText: "Confirm Password",
                              labelStyle: const TextStyle(color: Colors.black),
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
                              )),
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
                        onPressed: () {},
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
                                        BorderRadius.circular(BORDER_RADIUS)))),
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
