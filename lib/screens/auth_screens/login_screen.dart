import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webteb2/screens/auth_screens/sing_up.dart';
import 'package:webteb2/screens/widgets/txt_widegt.dart';
import 'package:webteb2/utls/consets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool tagPass = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: whiteColor,

      child: SingleChildScrollView(
        child: SafeArea(

            child: Column(

          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(padding),
              child: Image.asset("images/2.png"),
            ),
            const SizedBox(
              height: 10,
            ),

            // user name
            const Padding(
              padding: EdgeInsets.all(padding*2),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("enter username"),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(padding*2),
              child: TextField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: const Text("enter username"),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        if (tagPass == true) {
                          tagPass = false;
                        } else {
                          tagPass = true;
                        }
                        setState(() {});
                      },
                      child: tagPass
                          ? const Icon(CupertinoIcons.eye_slash_fill)
                          : const Icon(CupertinoIcons.eye_fill),
                    )),
                obscureText: tagPass ? true : false,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //login button
            Padding(
                padding: const EdgeInsets.all(padding),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: txtColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder:(context) =>const LoginScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 40),
                        child: Center(
                            child: TextWidget(
                                txt: "Login ",
                                txtColor: whiteColor,
                                fontsize: 22,
                                fontweight: FontWeight.bold)),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) =>const SingUpScreen()));

              },
              child: const Text.rich(TextSpan(children: [
                TextSpan(
                    text: "Don't have any account?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54)),
                TextSpan(
                    text: "Create Account",
                    style: TextStyle(
                      color: txtColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
              ])),
            )
          ],
        )),
      ),
    );
  }
}
