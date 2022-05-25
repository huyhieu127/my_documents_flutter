import 'package:flutter/material.dart';
import 'package:my_documents_flutter/utils/asset_utils.dart';
import 'package:my_documents_flutter/utils/color_utils.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                children: [
                  _buildHeader(),
                  const SizedBox(height: 50),
                  _buildInputForm(),
                  const SizedBox(height: 14),
                  _buildButtonForgotPwd(),
                  const SizedBox(height: 50),
                  _buildButtonLogin(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildInputForm() => Column(
        children: [
          TextField(
            style: const TextStyle(fontSize: 16),
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Username",
              fillColor: Colors.grey.shade200,
              filled: true,
              contentPadding: const EdgeInsets.all(20.0),
              hintStyle: const TextStyle(color: Color(ColorUtils.txtColor4)),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            style: const TextStyle(fontSize: 16),
            textInputAction: TextInputAction.done,
            obscureText: !_passwordVisible,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Password",
              fillColor: Colors.grey.shade200,
              filled: true,
              contentPadding: const EdgeInsets.all(20.0),
              hintStyle: const TextStyle(color: Color(ColorUtils.txtColor4)),
              suffixIcon: IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: const Color(ColorUtils.txtColor4),
                  size: 18,
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
            ),
          ),
        ],
      );

  _buildHeader() => Column(
        children: [
          const Text(
            "Sign In",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(ColorUtils.txtColor1),
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 30),
          Image.asset(AssetUtils.imgSignIn),
        ],
      );

  _buildButtonLogin() => ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: const Color(ColorUtils.primary),
          minimumSize: const Size.fromHeight(60),
          shadowColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        child: const Text(
          "Login",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      );

  _buildButtonForgotPwd() => const Align(
        alignment: Alignment.topRight,
        child: Text(
          "Forgot your password?",
          style: TextStyle(
            color: Color(ColorUtils.txtColor2),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
}
