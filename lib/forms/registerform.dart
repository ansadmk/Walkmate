
import 'package:app/authProvider.dart';
import 'package:app/forms/home_page.dart';
import 'package:app/forms/loginform.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class registerform extends StatefulWidget {
  const registerform({super.key});

  @override
  State<registerform> createState() => _registerformState();
}

class _registerformState extends State<registerform> {
  final TextEditingController _email = TextEditingController(),
      _pass = TextEditingController();
  @override
  void dispose() {
    _email.dispose();
    _pass.dispose();

    super.dispose();
  }

  void signUp(AuthProvider provider) async {
    final msg = await provider.signUp(_email.text, _pass.text);

    if (msg == '') return;
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  void googleSignUp(AuthProvider provider) async {
    final msg = await provider.googleSignUp();

    if (msg == '') return;
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    const stable = Color(0xFF707070);
    final s = MediaQuery.of(context).size.width;
    final authProvider = context.watch<AuthProvider>();
    return StreamBuilder<User?>(
        stream: authProvider.stream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) return const MyHomePage(title: '');
          return Container(
            color: Colors.white,
            child: SafeArea(
                child: Scaffold(
              body: Center(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 70,
                            child: SvgPicture.asset("assets/a.svg")),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Welcome',
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Authentication',
                          style: TextStyle(fontSize: 26, color: stable),
                        ),
                        const Text(
                          'Register',
                          style: TextStyle(fontSize: 20, color: stable),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: _email,
                          decoration: const InputDecoration(
                              label: Text(
                                "E-mail",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.w500),
                              ),
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: _pass,
                          decoration: const InputDecoration(
                              label: Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.w500),
                              ),
                              border: OutlineInputBorder()),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const loginform())),
                                child: Text(
                                  'Login',
                                  style:
                                      TextStyle(color: stable, fontSize: 14),
                                )),
                          ],
                        ),
                        if (authProvider.loading)
                          const CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        if (!authProvider.loading)
                          SizedBox(
                              width: double.maxFinite,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0)),
                                  onPressed: () => signUp(authProvider),
                                  child: const Text("Sign-Up"))),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: (s / 2) - 40,
                              child: Divider(),
                            ),
                            Text(
                              "OR",
                              style: TextStyle(fontSize: 10, color: stable),
                            ),
                            SizedBox(
                              width: (s / 2) - 40,
                              child: Divider(),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                onPressed: () => googleSignUp(authProvider),
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor:
                                        MaterialStateProperty.all(stable)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0.1, 2, 0.1, 2),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.1, 0, 0.1, 0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                            height: 30,
                                            width: 40,
                                            child: SvgPicture.asset(
                                                "assets/google.svg")),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          "Sign-Up with Google",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                            ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.indigo)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0.1, 2, 0.1, 2),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.1, 0, 0.1, 0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                            height: 30,
                                            width: 40,
                                            child: SvgPicture.asset(
                                                "assets/phone.svg")),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          "Sign-Up with Phone",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )),
          );
        });
  }
}
