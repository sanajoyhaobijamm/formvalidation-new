import 'package:flutter/material.dart';
import 'form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Formpage(),
    );
  }
}

class Formpage extends StatefulWidget {
  const Formpage({Key? key}) : super(key: key);

  @override
  State<Formpage> createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {
  String name = '';
  String email = '';
  String phone = '';
  String address = '';
  String password = '';
  String gender = '';

  final _formkey = GlobalKey<FormState>();
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();
  final controller5 = TextEditingController();
  final controller6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Expanded(
            child: Column(
              children: [
                FormWidget(
                    formkey: _formkey,
                    controller1: controller1,
                    controller2: controller2,
                    controller3: controller3,
                    controller4: controller4,
                    controller6: controller6),
                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(
                            name: controller1.text,
                            address: controller2.text,
                            phone: controller3.text,
                            email: controller4.text,
                            password: controller5.text,
                            gender: controller6.text,
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage(
      {Key? key,
      required this.name,
      required this.address,
      required this.phone,
      required this.email,
      required this.password,
      required this.gender})
      : super(key: key);

  final String name;
  final String address;
  final String phone;
  final String email;
  final String password;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
        ),
        body: Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FlexColumnWidth(0.3),
          },
          children: [
            TableRow(
              children: [
                const Text(
                  'Name:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  name,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            TableRow(
              children: [
                const Text(
                  'Address:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  address,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            TableRow(
              children: [
                const Text(
                  'Phone:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  phone,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            TableRow(
              children: [
                const Text(
                  'email:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  email,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            TableRow(
              children: [
                const Text(
                  'Password:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  password,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            TableRow(
              children: [
                const Text(
                  'gender:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  gender,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ));
  }
}
