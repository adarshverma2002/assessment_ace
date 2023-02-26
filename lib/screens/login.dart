import 'package:assessment_ace/screens/servicesPage.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final TextEditingController _emailController = TextEditingController();
  EmailOTP myAuth = EmailOTP();
  bool emailSent = false;

  Future<void> sendOTP() async {
    myAuth.setConfig(
        appEmail: "test@examples.com",
        appName: "assessment",
        userEmail: _emailController.text,
        otpLength: 6,
        otpType: OTPType.digitsOnly);
    if (await myAuth.sendOTP() == true) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("OTP Send Successfully")));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("OTP send failed")));
    }

    emailSent = true;
    setState(() {});
  }

  void validateOTP() async {
    if (await myAuth.verifyOTP(otp: code) == true) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("OTP Verified Successfully")));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => services()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("OTP verification failed")));
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  var code = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Image.asset(
                'assets/gif_mobile.gif',
                height: 300,
                width: 300,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                emailSent ? "Enter the OTP" : "Register with email",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                  "Please enter your ${(emailSent) ? "OTP" : "email"} for verification"),
              const SizedBox(
                height: 20,
              ),
              ...[
                emailSent
                    ? SizedBox.shrink()
                    : Container(
                        width: 300,
                        height: 55,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black87, width: 2.5),
                            borderRadius: BorderRadius.circular(8)),
                        child: TextField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "  Enter e-mail address"),
                        ),
                      ),
                const SizedBox(height: 50),
              ],
              ...[
                (emailSent)
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Pinput(
                          length: 6,
                          showCursor: true,
                          onChanged: (value) {
                            code = value;
                          },
                        ),
                      )
                    : SizedBox.shrink(),
                const SizedBox(height: 50),
              ],
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  sendOTP();
                  if (!emailSent) {
                    sendOTP();
                  } else {
                    validateOTP();
                  }
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                child: Text(
                  (emailSent) ? "Verify Email" : "Send OTP",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
