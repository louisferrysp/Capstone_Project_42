import 'package:flutter/material.dart';

class RegisScreen extends StatefulWidget {
  const RegisScreen({Key? key}) : super(key: key);

  @override
  State<RegisScreen> createState() => _RegisScreenState();
}

TextEditingController namaLengkap = TextEditingController();
TextEditingController emailPerusahaan = TextEditingController();
TextEditingController password = TextEditingController();

class _RegisScreenState extends State<RegisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Daftar Akun',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: namaLengkap,
                decoration: const InputDecoration(
                  label: Icon(Icons.supervised_user_circle_rounded),
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
              TextFormField(
                controller: emailPerusahaan,
                decoration: const InputDecoration(
                  label: Icon(Icons.supervised_user_circle_rounded),
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
              const Text('Gunakan Email Perusahaan kamu'),
              const SizedBox(height: 10),
              TextFormField(
                controller: password,
                decoration: const InputDecoration(
                  label: Icon(Icons.supervised_user_circle_rounded),
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
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Text('Daftar Akun'),
              ),
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
        ),
      ),
    );
  }
}
