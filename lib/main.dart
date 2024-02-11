import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/customtextfield.dart';
import 'package:flutter_application_1/views/customtext.dart';
import 'package:flutter_application_1/views/custombutton.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/daystar logo.png"),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customtitleText(
                    label: "Login Screen",
                    labelColor: primaryColor,
                    labelFontSize: 25,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const customtitleText(label: "Username"),
              customTextField(
                userFieldController: userNameController,
                icon: Icons.person,
                hint: "Phone number||Email",
              ),
              const customtitleText(label: "Password"),
              customTextField(
                userFieldController: passwordController,
                icon: Icons.lock,
                hidetext: true,
                isPassword: true,
                hint: "Secret",
              ),
              const SizedBox(
                height: 30,
              ),
              customButton(
                userNameController: userNameController,
                buttonlabel: "Login",
                buttoncolor: primaryColor,
                passwordController: passwordController,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  customtitleText(label: "No account yet?"),
                  customtitleText(
                    label: "Register",
                    labelColor: primaryColor,
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                const customtitleText(label: "Forgot password?"),
                GestureDetector(
                  child: const customtitleText(
                    label: "Retrieve Password",
                    labelColor: primaryColor,
                  ),
                  onTap: () {
                    print("Recovered Password");
                  },
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
