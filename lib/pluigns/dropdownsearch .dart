import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'dropdownSearch ',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const items2 = ["Brazil", "Italia", "Tunisia", 'Canada', 'EGYPT'];
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: DropdownSearch<String>(
                // الخصائص لقائمة العناصر
                popupProps: const PopupProps.menu(
                  showSelectedItems: true,
                  // disabledItemFn: (String s) => s.startsWith('I'),
                  //search
                  showSearchBox: true,
                ),
                //////////
                // popupProps: const PopupProps.dialog(
                //     showSelectedItems: true,
                //     // disabledItemFn: (String s) => s.startsWith('I'),
                //     title: Center(
                //         child: Text(
                //       "title",
                //       style: TextStyle(fontSize: 30),
                //     ))),
                ////////
                // popupProps: const PopupProps.bottomSheet(showSelectedItems: true),
                //////
                // popupProps:const PopupProps.modalBottomSheet(showSelectedItems: true),

                //العناصر
                items: items2,
                //خصائص الدروب نفسه
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                      labelText: "الدولة",
                      hintText: "menu of countries",
                      helperText: "ادخل اسم الدولة"),
                ),
                onChanged: print,
                selectedItem: "Brazil", // قيمة يتم اختيارها افتراضى
              ),
            ),
            //////////////////////////
            DropdownSearch<String>.multiSelection(
              items: items2,
              popupProps: PopupPropsMultiSelection.menu(
                showSelectedItems: true,
                disabledItemFn: (String s) => s.startsWith('I'),
                onItemAdded: (selectedItems, addedItem) => {},
                onItemRemoved: (selectedItems, addedItem) => {},
                onDismissed: () => {},
              ),
              onSaved: (newValue) => {},
              // onBeforeChange: (prevItems, nextItems) => {},
              // onBeforePopupOpening: (selItems) => {},
              onChanged: print,
              selectedItems: const ["Brazil"],
            ),
          ],
        ),
      ),
    );
  }
}
