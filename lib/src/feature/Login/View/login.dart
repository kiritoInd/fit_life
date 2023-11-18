import 'package:fit_life/src/feature/Home/View/Homepage.dart';
import 'package:fit_life/src/res/color_Pallet.dart';
import 'package:fit_life/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/round_textfield.dart';
import '../Widgets/round_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Hey there,",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1d1517),
                  height: 24 / 16,
                ),
              ),
              Text(
                "Welcome Back",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1d1517),
                ),
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              SizedBox(
                height: media.width * 0.04,
              ),
              const RoundTextField(
                hitText: "Email",
                icon: ImageAssets.email,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: media.width * 0.04,
              ),
              RoundTextField(
                hitText: "Password",
                icon: ImageAssets.lock,
                obscureText: true,
                rigtIcon: TextButton(
                    onPressed: () {},
                    child: Container(
                        alignment: Alignment.center,
                        width: 20,
                        height: 20,
                        child: Image.asset(
                          ImageAssets.show_password,
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,
                          color: ColorsPallet.gray,
                        ))),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(
                      color: ColorsPallet.gray,
                      fontSize: 10,
                      decoration: TextDecoration.underline),
                ),
              ),
              const Spacer(),
              RoundButton(
                  title: "Login",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }),
              SizedBox(
                height: media.width * 0.04,
              ),
              SizedBox(
                height: media.width * 0.04,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  Expanded(
                      child: Container(
                    height: 1,
                    color: ColorsPallet.gray.withOpacity(0.5),
                  )),
                  Text(
                    "  Or  ",
                    style: TextStyle(color: ColorsPallet.black, fontSize: 12),
                  ),
                  Expanded(
                      child: Container(
                    height: 1,
                    color: ColorsPallet.gray.withOpacity(0.5),
                  )),
                ],
              ),
              SizedBox(
                height: media.width * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: ColorsPallet.white,
                        border: Border.all(
                          width: 1,
                          color: ColorsPallet.gray.withOpacity(0.4),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        ImageAssets.google,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: media.width * 0.04,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don’t have an account yet? ",
                      style: TextStyle(
                        color: ColorsPallet.black,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Register",
                      style: TextStyle(
                          color: ColorsPallet.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: media.width * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
