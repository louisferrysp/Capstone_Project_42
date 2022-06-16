import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms/api/login_api.dart';
import 'package:lms/model/User_model.dart';
import 'package:lms/screen/regis_screen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void setState(LoginScreen) {
    super.setState(LoginScreen);
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailPerusahaan = TextEditingController();
    TextEditingController passwordUser = TextEditingController();
    UserModel userModel =
        UserModel(email: emailPerusahaan.text, password: passwordUser.text);

    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      // ================================================================================================ //
                      //                FORM EMAIL                                                                        //
                      // ================================================================================================ //
                      TextFormField(
                        controller: emailPerusahaan,
                        decoration: const InputDecoration(
                          labelText: 'Alamat Email',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
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
                        controller: passwordUser,
                        decoration: const InputDecoration(
                          labelText: 'Kata Sandi',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                          'ini email ${emailPerusahaan.text}|| ini password ${passwordUser.text}'),
                      // ================================================================================================ //
                      //                BUTTON LOGIN                                                                      //
                      // ================================================================================================ //
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey)),
                        onPressed: () {
                          setState(() {
                            emailPerusahaan.text;
                            passwordUser.text;
                          });
                          UserModel.userAPI('user1@traveloka.com', 'user123')
                              .then((value) {
                            setState(() {
                              userModel.email = value.email;
                              userModel.password = value.password;
                            });
                          });
                          print("this is user ${userModel.email}");
                          print("this is password ${userModel.password}");
                          print(
                              "this is email perusahaan ${emailPerusahaan.text}");
                          print(
                              "this is password perusahaan ${passwordUser.text}");
                          if (userModel.email == emailPerusahaan.text &&
                              userModel.password == passwordUser.text) {
                          } else {
                            print('kok error');
                          }
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
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
                // ================================================================================================ //
                //                Kontak kami, Information, FaQ , Tentang Kami                                      //
                // ================================================================================================ //
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 250,
                  width: double.infinity,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        color: Colors.white,
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text('Kontak Kami'),
                            SvgPicture.asset('assets/images/instagram.svg'),
                            SvgPicture.asset('assets/images/facebook.svg'),
                            SvgPicture.asset('assets/images/telegram.svg'),
                            SvgPicture.asset('assets/images/youtube.svg'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text('Informasi'),
                      ),
                      const SizedBox(height: 5),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text('FAQ'),
                      ),
                      const SizedBox(height: 5),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text('Tentang Kami'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
