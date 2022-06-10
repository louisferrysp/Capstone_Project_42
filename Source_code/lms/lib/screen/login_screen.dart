import 'package:flutter/material.dart';
import 'package:lms/screen/regis_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 20),
// ================================================================================================ //
//                FORM EMAIL                                                                        //
// ================================================================================================ //
                  TextFormField(
                    controller: emailPerusahaan,
                    decoration: const InputDecoration(
                      labelText: 'Alamat Email',
                      contentPadding: EdgeInsets.symmetric(vertical: 30),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text('Gunakan Email Yang Telah Terdaftar'),
                  const SizedBox(height: 10),
// ================================================================================================ //
//                FORM PASSWORD                                                                     //
// ================================================================================================ //
                  TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                      labelText: 'Kata Sandi',
                      contentPadding: EdgeInsets.symmetric(vertical: 30),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
// ================================================================================================ //
//                BUTTON LOGIN                                                                      //
// ================================================================================================ //
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'dashboard');
                    },
                    child: Text('Login'),
                  ),
// ================================================================================================ //
//                BUTTON BELUM PUNYA AKUN                                                           //
// ================================================================================================ //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Belum Punya Akun ?'),
                      const SizedBox(height: 1),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'regis');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
