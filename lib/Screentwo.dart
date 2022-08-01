// ignore: duplicate_ignore
// ignore: file_names
// ignore: unnecessary_import
// ignore_for_file: file_names, prefer_const_constructors, duplicate_ignore

// ignore: unnecessary_import, implementation_imports
import 'package:flutter/src/foundation/key.dart';
// ignore: implementation_imports, unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages, unused_import
import 'package:flutter_application_3/Formblabla.dart';

class Screentwo extends StatefulWidget {
  const Screentwo({Key? key}) : super(key: key);

  @override
  State<Screentwo> createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo> {
  TextEditingController ctrphone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Screentwo")),
        body: Container(
            // ignore: prefer_const_constructors
            margin: EdgeInsets.all(10),
            child: Column(children: [
              TextField(
                  controller: ctrphone,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Input Phone Number",
                  )),
              ElevatedButton(
                // ignore: prefer_const_literals_to_create_immutables
                onPressed: () {
                  Navigator.pop(context, ctrphone.text);
                },
                child: Text("Submit"),
              )
            ])));
  }
}
