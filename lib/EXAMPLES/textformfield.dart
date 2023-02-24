import 'package:flutter/material.dart';

void main() {
  runApp(const TextFormFieldk());
}

class TextFormFieldk extends StatelessWidget {
  const TextFormFieldk({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // scrollBehavior: const MaterialScrollBehavior().copyWith(
      //   dragDevices: {
      //     PointerDeviceKind.mouse,
      //     PointerDeviceKind.touch,
      //     PointerDeviceKind.trackpad,
      //     PointerDeviceKind.stylus,
      //     PointerDeviceKind.invertedStylus,
      //     PointerDeviceKind.unknown
      //   },
      // ),
      title: 'hi ahmed',
      home: KTextFormFieldkkk(),
    );
  }
}

class KTextFormFieldkkk extends StatefulWidget {
  const KTextFormFieldkkk({
    super.key,
  });

  @override
  State<KTextFormFieldkkk> createState() => _KTextFormFieldkkkState();
}

class _KTextFormFieldkkkState extends State<KTextFormFieldkkk> {
  // late TextEditingController functionsvalue;
  TextEditingController functionsvalue = TextEditingController(text: "");
  var passwordcase = true;

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.abc_outlined),
                  // border:

                  // counter: ,
                  // disabledBorder: ,
                  // enabledBorder: ,
                  // enabled: ,
                  hintText: "hintText",
                  //  fillColor: ,
                  //  filled: ,
                  //  focusColor: ,
                  //  focusedBorder: ,
                  //  helperText: ,
                  hintMaxLines: 1,
                  hintTextDirection: TextDirection.ltr,
                  hintStyle: TextStyle(color: Colors.cyanAccent),
                  iconColor: Colors.deepOrange,
                  //  hoverColor: ,
                  // label: const Text("label"),
                  labelStyle: TextStyle(color: Colors.blue),
                  labelText: "labelText",
                  //  ,
                  //  prefix: ,
                  //  prefixIcon: ,
                  //  prefixStyle: ,
                  //  prefixIconColor: ,
                  //  prefixText: ,
                  //  suffix: ,
                  //  suffixIcon:,
                  //   suffixStyle: ,
                  //  suffixIconColor:,
                  //   suffixText: ,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  // border:

                  // counter: ,
                  // disabledBorder: ,
                  // enabledBorder: ,
                  // enabled: ,
                  hintText: "hintText",
                  //  fillColor: ,
                  //  filled: ,
                  //  focusColor: ,
                  //  focusedBorder: ,
                  //  helperText: ,

                  //  hoverColor: ,
                  label: Text("label"),

                  //  ,
                  // prefix: Text("prefix"),
                  prefixIcon: Icon(Icons.abc_outlined),
                  prefixStyle: TextStyle(color: Colors.purple),
                  prefixIconColor: Colors.deepPurpleAccent,
                  prefixText: "prefix",
                  // suffix: Text("prefix"),
                  suffixIcon: Icon(Icons.abc_outlined),
                  suffixStyle: TextStyle(color: Colors.purple),
                  suffixIconColor: Colors.deepPurpleAccent,
                  suffixText: "suffix",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  // border:

                  // counter: ,
                  // disabledBorder: ,
                  // enabledBorder: ,
                  // enabled: ,
                  hintText: "hintText",

                  focusColor: Colors.redAccent,
                  //  focusedBorder: ,
                  helperText: "hi",
                  helperStyle: TextStyle(
                    color: Colors.amber,
                  ),
                  hoverColor: Colors.amber,
                  fillColor: Colors.blueAccent,
                  filled: true,
                  label: Text("label"),

                  prefix: Text("prefix"),

                  suffix: Text("prefix"),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.blue, width: 4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.green, width: 4),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(color: Colors.purpleAccent, width: 4),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.pink, width: 4),
                  ),
                  // focusedErrorBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  //   borderSide: const BorderSide(color: Colors.blue, width: 4),
                  // ),
                  // errorBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  //   borderSide: const BorderSide(color: Colors.blue, width: 4),
                  // ),

                  // counter: ,

                  hintText: "hintText",

                  //  focusedBorder: ,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabled: false,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.blue, width: 4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.green, width: 4),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(color: Colors.purpleAccent, width: 4),
                  ),

                  // focusedErrorBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  //   borderSide: const BorderSide(color: Colors.blue, width: 4),
                  // ),
                  // errorBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  //   borderSide: const BorderSide(color: Colors.blue, width: 4),
                  // ),

                  // counter: ,

                  hintText: "hintText",

                  //  focusedBorder: ,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.amber, width: 4),
                  ),

                  // counter: ,

                  hintText: "hintText",
                ),
              ),
              TextFormField(
                  decoration: const InputDecoration(
                    labelText: "datetime",
                  ),
                  keyboardType: TextInputType.datetime),
              TextFormField(
                  decoration: const InputDecoration(
                    labelText: "emailAddress",
                  ),
                  keyboardType: TextInputType.emailAddress),
              TextFormField(
                  decoration: const InputDecoration(
                    labelText: "multiline",
                  ),
                  keyboardType: TextInputType.multiline),
              TextFormField(
                  decoration: const InputDecoration(
                    labelText: "name",
                  ),
                  keyboardType: TextInputType.name),
              TextFormField(
                  decoration: const InputDecoration(
                    labelText: "none",
                  ),
                  keyboardType: TextInputType.none),
              TextFormField(
                  decoration: const InputDecoration(
                    labelText: "number",
                  ),
                  keyboardType: TextInputType.number),
              TextFormField(
                  decoration: const InputDecoration(
                    labelText: "phone",
                  ),
                  keyboardType: TextInputType.phone),
              TextFormField(
                  decoration: const InputDecoration(
                    labelText: "streetAddress",
                  ),
                  keyboardType: TextInputType.streetAddress),
              TextFormField(
                  decoration: const InputDecoration(
                    labelText: "text",
                  ),
                  keyboardType: TextInputType.text),
              TextFormField(
                  decoration: const InputDecoration(
                    labelText: "url",
                  ),
                  keyboardType: TextInputType.url),
              TextFormField(
                  decoration: InputDecoration(
                      labelText: "visiblePassword",
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
              //  TextFormField( decoration: const InputDecoration(
              //   labelText: "values",
              // ),keyboardType: TextInputType.values[               2,TextInputType.url
              // ]),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "maxLength & maxLines",
                ),
                minLines: 1,
                maxLines: 3,
                maxLength: 300,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "functions",
                ),
                textInputAction: TextInputAction.done,
                // textInputAction: TextInputAction.go,
                // textInputAction: TextInputAction.continueAction,
                // textInputAction: TextInputAction.join,
                // textInputAction: TextInputAction.search,

                controller: functionsvalue,
                onTap: () {
                  setState(() {
                    functionsvalue.text = "onTap";
                  });
                },
                onTapOutside: (PointerDownEvent) {
                  setState(() {
                    functionsvalue.text = "onTapOutside";
                  });
                },
                onChanged: (value) {
                  setState(() {
                    functionsvalue.text = value;
                  });
                },
                onEditingComplete: () {
                  setState(() {
                    functionsvalue.text = "onEditingComplete";
                  });
                },
                onFieldSubmitted: (value) {
                  setState(() {
                    functionsvalue.text = "onFieldSubmitted";
                  });
                },
                onSaved: (value) {
                  setState(() {
                    functionsvalue.text = "onSaved";
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  functionsvalue.text,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ));
  }
}
/*

(new) TextFormField TextFormField({
  Key? key,
  TextEditingController? controller,
  String? initialValue,
  FocusNode? focusNode,
  InputDecoration? decoration = const InputDecoration(),
  TextInputType? keyboardType,
  TextCapitalization textCapitalization = TextCapitalization.none,
  TextInputAction? textInputAction,
  TextStyle? style,
  StrutStyle? strutStyle,
  TextDirection? textDirection,
  TextAlign textAlign = TextAlign.start,
  TextAlignVertical? textAlignVertical,
  bool autofocus = false,
  bool readOnly = false,
  ToolbarOptions? toolbarOptions,
  bool? showCursor,
  String obscuringCharacter = '•',
  bool obscureText = false,
  bool autocorrect = true,
  SmartDashesType? smartDashesType,
  SmartQuotesType? smartQuotesType,
  bool enableSuggestions = true,
  MaxLengthEnforcement? maxLengthEnforcement,
  int? maxLines = 1,
  int? minLines,
  bool expands = false,
  int? maxLength,
  void Function(String)? onChanged,
  void Function()? onTap,
  void Function(PointerDownEvent)? onTapOutside,
  void Function()? onEditingComplete,
  void Function(String)? onFieldSubmitted,
  void Function(String?)? onSaved,
  String? Function(String?)? validator,
  List<TextInputFormatter>? inputFormatters,
  bool? enabled,
  double cursorWidth = 2.0,
  double? cursorHeight,
  Radius? cursorRadius,
  Color? cursorColor,
  Brightness? keyboardAppearance,
  EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
  bool? enableInteractiveSelection,
  TextSelectionControls? selectionControls,
  Widget? Function(BuildContext, {required int currentLength, required bool isFocused, required int? maxLength})? buildCounter,
  ScrollPhysics? scrollPhysics,
  Iterable<String>? autofillHints,
  AutovalidateMode? autovalidateMode,
  ScrollController? scrollController,
  String? restorationId,
  bool enableIMEPersonalizedLearning = true,
  MouseCursor? mouseCursor,
  Widget Function(BuildContext, EditableTextState)? contextMenuBuilder = _defaultContextMenuBuilder,
})
package:flutter/src/material/text_form_field.dart

Creates a [FormField] that contains a [TextField].

When a [controller] is specified, [initialValue] must be null (the default). If [controller] is null, then a [TextEditingController] will be constructed automatically and its text will be initialized to [initialValue] or the empty string.

For documentation about the various parameters, see the [TextField] class and [TextField.new], the constructor.


*/
