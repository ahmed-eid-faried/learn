import 'package:flutter/material.dart';

void main() => runApp(const SearchDelegatek());

class SearchDelegatek extends StatelessWidget {
  const SearchDelegatek({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SearchDelegate',
      home: SearchDelegateP(),
    );
  }
}

class SearchDelegateP extends StatelessWidget {
  const SearchDelegateP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: Datasearch());
              },
            )
          ],
          title: const Text('SearchDelegate'),
        ),
        body: Container(
          color: Colors.amberAccent,
        ));
  }
}

List names = [
  "ahmed",
  "mohamed",
  "basel",
  "tarek",
  "mady",
  "faried",
  "eid",
  "john",
  "lolal"
];

class Datasearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: Center(child: Text(query)),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filternames =
        names.where((element) => element.contains(query)).toList();
    // names.where((element) => element.startsWith(query)).toList();

    return ListView.builder(
        itemCount: query == "" ? names.length : filternames.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              query = query == "" ? names[index] : filternames[index];
              showResults(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: query == ""
                  ? Text("${names[index]}")
                  : Text("${filternames[index]}"),
            ),
          );
        });
  }
}
