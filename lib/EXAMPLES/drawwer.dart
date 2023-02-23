import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const Drawerw());
}

class Drawerw extends StatelessWidget {
  const Drawerw({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hi ahmed',
      home: Drawerwww(),
    );
  }
}

class Drawerwww extends StatelessWidget {
  Drawerwww({
    super.key,
  });
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        drawer: const DrawerW(),
        endDrawer: const DrawerW(),
        drawerScrimColor: Colors.amber.withOpacity(0.3),
        appBar: AppBar(
          // Drawer مع  leading مش ينفع
          // leading: const Icon(Icons.ac_unit),
          title: const Text("Drawer"),
          centerTitle: true,
          // endDrawer مع  actions مش ينفع
          // actions: [
          //   IconButton(onPressed: () {}, icon: const Icon(Icons.nat_sharp)),
          //   IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          //   IconButton(onPressed: () {}, icon: const Icon(Icons.deblur)),
          //   IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code))
          // ],
          elevation: 35,
          shadowColor: Colors.amber[900],
          // flexibleSpace: Container(color: Colors.greenAccent),
          //error  // bottom:            PreferredSizeWidgetsize: 80, preferredSize: Size(100, 100),
          scrolledUnderElevation: 10,
          backgroundColor: Colors.amber,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        // drawer: const Text("hi ahmed"),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  scaffoldkey.currentState?.openDrawer();
                },
                child: const Text("openDrawer"),
              ),
              ElevatedButton(
                onPressed: () {
                  scaffoldkey.currentState?.openEndDrawer();
                },
                child: const Text("openEndDrawer"),
              ),
            ],
          ),
        ));
  }
}

class DrawerW extends StatelessWidget {
  const DrawerW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("AE"),
              ),
              accountName: Text("Ahmed Mady"),
              accountEmail: Text("ahmed.eid.729661@gmail.com")),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.help_center_outlined),
            title: const Text("About"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text("help"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("logout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
