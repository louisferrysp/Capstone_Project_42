import 'package:flutter/material.dart';

class RegisScreen extends StatefulWidget {
  const RegisScreen({Key? key}) : super(key: key);

  @override
  State<RegisScreen> createState() => _RegisScreenState();
}

TextEditingController _namaLengkap = TextEditingController();
TextEditingController _emailPerusahaan = TextEditingController();
TextEditingController _password = TextEditingController();
TextEditingController _validatorpassword = TextEditingController();

class _RegisScreenState extends State<RegisScreen> {
  @override
  Widget build(BuildContext context) {
    bool _isobscure = true;
    bool _notChecked = false;
    bool _checked = true;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              children: [
                const Text(
                  'Daftar Akun',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 20),
// ================================================================================================ //
//                FORM NAMA LENGKAP                                                                 //
// ================================================================================================ //
                TextFormField(
                  controller: _namaLengkap,
                  decoration: const InputDecoration(
                    labelText: 'Nama Lengkap',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
// ================================================================================================ //
//                FORM EMAIL                                                                        //
// ================================================================================================ //
                TextFormField(
                  controller: _emailPerusahaan,
                  decoration: const InputDecoration(
                    labelText: 'Alamat Email',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
                const Text(
                  'Gunakan Email Perusahaan Kamu',
                  textAlign: TextAlign.right,
                ),
                const SizedBox(height: 10),
// ================================================================================================ //
//                FORM PASSWORD                                                                     //
// ================================================================================================ //
                TextFormField(
                  controller: _password,
                  obscureText: _isobscure,
                  decoration: const InputDecoration(
                    labelText: 'Kata Sandi',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    suffixIcon: Icon(Icons.square),
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
// ================================================================================================ //
//                FORM VALIDATOR PASSWORD                                                           //
// ================================================================================================ //
                TextFormField(
                  controller: _validatorpassword,
                  obscureText: _isobscure,
                  decoration: const InputDecoration(
                    labelText: 'Ulangi Kata Sandi',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    suffixIcon: Icon(Icons.square),
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
// ================================================================================================ //
//                BUTTON CHECK BOX                                                                  //
// ================================================================================================ //
                Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Row(
                    children: [
                      Checkbox(
                          value: _notChecked,
                          onChanged: (bool? _checked) {
                            setState(() {
                              _notChecked = _checked!;
                            });
                          }),
                    ],
                  ),
                ),
                const Text(
                    'Saya setuju dengan syarat dan ketentuan yang berlaku'),
                const SizedBox(height: 10),
// ================================================================================================ //
//                BUTTON DAFTAR AKUN                                                                //
// ================================================================================================ //
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    child: const Text('Daftar Akun')),
// ================================================================================================ //
//                BUTTON SUDAH PUNYA AKUN                                                           //
// ================================================================================================ //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Sudah Punya Akun ?'),
                    const SizedBox(height: 1),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
