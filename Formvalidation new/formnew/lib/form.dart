import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    Key? key,
    required GlobalKey<FormState> formkey,
    required this.controller1,
    required this.controller2,
    required this.controller3,
    required this.controller4,
    required this.controller6,
  })  : _formkey = formkey,
        super(key: key);

  final GlobalKey<FormState> _formkey;
  final TextEditingController controller1;
  final TextEditingController controller2;
  final TextEditingController controller3;
  final TextEditingController controller4;
  final TextEditingController controller6;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              autovalidateMode: AutovalidateMode.always,
              controller: controller1,
              decoration: const InputDecoration(
                labelText: 'Name',
                prefixIcon: Icon(Icons.person),
              ),
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter  Name !';
                }
                return null;
              },
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.always,
              controller: controller2,
              decoration: const InputDecoration(
                  labelText: 'Address', prefixIcon: Icon(Icons.streetview)),
              keyboardType: TextInputType.streetAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter  a valid Email !';
                }
                return null;
              },
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.always,
              controller: controller3,
              decoration: const InputDecoration(
                labelText: 'Phone No.:',
                prefixIcon: Icon(
                  Icons.phone,
                ),
              ),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter  a valid phone No !';
                }
                return null;
              },
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.always,
              controller: controller4,
              decoration: const InputDecoration(
                labelText: 'email',
                prefixIcon: Icon(
                  Icons.mail,
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please re-enter email !';
                }
                return null;
              },
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.always,
              controller: controller6,
              decoration: const InputDecoration(
                  labelText: 'gender', prefixIcon: Icon(Icons.person)),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter  a valid age !';
                }
                return null;
              },
            ),
          ],
        ));
  }
}
