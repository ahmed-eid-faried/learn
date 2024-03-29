import 'package:flutter/material.dart';

void main() {
  runApp(const FormFieldk());
}

class FormFieldk extends StatelessWidget {
  const FormFieldk({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hi ahmed',
      home: KFormFieldkkk(),
    );
  }
}

class KFormFieldkkk extends StatefulWidget {
  const KFormFieldkkk({
    super.key,
  });

  @override
  State<KFormFieldkkk> createState() => _KFormFieldkkkState();
}

class _KFormFieldkkkState extends State<KFormFieldkkk> {
  // late TextEditingController functionsvalue;
  TextEditingController functionsvalue = TextEditingController(text: "");
  var passwordcase = true;
  var password = "";
  var name = "";

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  send() {
    var formdata = formKey.currentState;
    if (formdata == null || formdata.validate()) {
      formdata?.save();
      print("valid");
      print("name:$name");
      print("password:$password");
    } else {
      print("not valid");
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerScrimColor: Colors.amber.withOpacity(0.3),
        appBar: AppBar(
          title: const Text("Tabs"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                  onSaved: (text) {
                    text ??= "";
                    name = text;
                  },
                  autovalidateMode:
                      AutovalidateMode.always, //مش محتاج زر الارسال
                  validator: (text) {
                    if (text!.isEmpty) {
                      return "name is Empty";
                    }
                    if (text.length < 4) {
                      return "name is less than 4 letters";
                    }
                    if (text.length > 10) {
                      return "name is bigger than 10 letters";
                    }
                    if (text.contains("admin")) {
                      return "name contains of admin";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: "name",
                  ),
                  keyboardType: TextInputType.name),
              TextFormField(

                  // autovalidateMode: AutovalidateMode.always,
                  onSaved: (text) {
                    text ??= "";
                    password = text;
                  },
                  validator: (text) {
                    if (text!.isEmpty) {
                      return "Password is Empty";
                    }
                    if (text.length < 4) {
                      return "Password is less than 4 letters";
                    }
                    if (text.length < 10) {
                      return "Password is bigger than 10 letters";
                    }
                    if (text.contains("admin")) {
                      return "Password contains of xxx";
                    }
                    if (text.contains(AutofillHints.gender)) {
                      return "Password contains of gender";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: "Password",
                      suffixIconColor:
                          passwordcase == true ? Colors.grey : Colors.amber,
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordcase == true
                                  ? passwordcase = false
                                  : passwordcase = true;
                            });
                          },
                          icon: const Icon(Icons.remove_red_eye))),
                  obscureText: passwordcase,
                  keyboardType: TextInputType.visiblePassword),
              ElevatedButton.icon(
                  onPressed: send,
                  icon: const Icon(Icons.send),
                  label: const Text("Send")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ));
  }
}
