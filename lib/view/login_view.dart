import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes.dart';
import 'package:mvvm/utils/routes_Name.dart';
import 'package:mvvm/utils/utils.dart';

class LogInView extends StatefulWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  bool isvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                focusNode: emailFocus,
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  label: Text("Email"),
                ),
                onFieldSubmitted: (value) {
                  Utils.fieldFocusChanged(context, emailFocus, passwordFocus);
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                focusNode: passwordFocus,
                controller: _passwordController,
                obscureText: isvisible,
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isvisible = !isvisible;
                      });
                    },
                    child: isvisible
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  ),
                  prefixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(),
                  label: Text("Password"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
