import 'package:flutter/material.dart';

class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputPageState();
}

int isRadio = 3;
bool isCheck = false;

class _InputPageState extends State<Inputpage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  TextEditingController _text1 = TextEditingController();
  TextEditingController _text2 = TextEditingController();
  TextEditingController _text3 = TextEditingController();
  TextEditingController _text4 = TextEditingController();

  bool b = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Text("TextFormfied #1"), //1
            TextFormField(
              controller: _text1,
              onChanged: (value) {
                setState(() {});
              },
            ),
            //Text("show input ${_text1.text}\n"),
            Text("TaxtFromFied #2"), //2
            TextFormField(
              controller: _text2,
              keyboardType: TextInputType.url,
              obscureText: true,
              onChanged: (value) {
                setState(() {});
              },
            ),

            Text("TextFormfield #3"), //3
            TextFormField(
              controller: _text3,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.green,
                    width: 1.2,
                  )),
                  prefixIcon: Icon(Icons.account_box),
                  labelText: "User Name",
                  hintText: "Enter Username"),
            ),
            Text("show input: #1 : ${_text1.text}"),
            Text("show input: #2 : ${_text2.text}"),
            Text("show input: #3 : ${_text3.text}"),

            RadioListTile(
              title: Text("Food"),
              controlAffinity: ListTileControlAffinity.platform,
              value: 1,
              groupValue: isRadio,
              activeColor: Colors.red,
              onChanged: ((value) {
                setState(() {
                  isRadio = value!;
                });
              }),
            ),
            RadioListTile(
              title: Text("Bakery"),
              controlAffinity: ListTileControlAffinity.platform,
              value: 2,
              groupValue: isRadio,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  isRadio = value!;
                });
              },
            ),
            RadioListTile(
              title: Text("FastFood"),
              controlAffinity: ListTileControlAffinity.platform,
              value: 3,
              groupValue: isRadio,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  isRadio = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text("FastFood"),
              controlAffinity: ListTileControlAffinity.platform,
              value: b,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  b = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
