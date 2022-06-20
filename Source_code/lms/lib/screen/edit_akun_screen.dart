import 'package:flutter/material.dart';

class EditAkunScreen extends StatefulWidget {
  const EditAkunScreen({Key? key}) : super(key: key);

  @override
  State<EditAkunScreen> createState() => _AkunScreenState();
}

class _AkunScreenState extends State<EditAkunScreen> {
  var img = 'assets/images/landing.png';
  var name = 'Nama';
  var email = 'Email';
  var role = 'UI UX Designer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              backgroundImage: AssetImage(img),
              radius: 80,
            ),
            const SizedBox(height: 50),
            Text(
              name,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              email,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              role,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'edit_akun_screen');
              },
              child: ListTile(
                leading: Text(
                  'Edit Data Pribadi',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                tileColor: Color.fromARGB(255, 0, 92, 74),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Text(
                  'Sertifikat',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                tileColor: Color.fromARGB(255, 0, 92, 74),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Simpan'),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 92, 74),
                  fixedSize: Size(120, 40)),
            ),
          ],
        ),
      ),
    ));
  }
}
