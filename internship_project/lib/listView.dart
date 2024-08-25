import 'package:flutter/material.dart';

class listView extends StatelessWidget {
  const listView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Countries Names"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 50),
        children: [
          ListTile(
            title: const Text("Pakistan"),
            onTap: () => showSnackbar(context, "Pakistan"),
          ),
          ListTile(
            title: const Text("Turkey"),
            onTap: () => showSnackbar(context, "Turkey"),
          ),
          ListTile(
            title: const Text("Palestine"),
            onTap: () => showSnackbar(context, "Palestine"),
          ),
          ListTile(
            title: const Text("Russia"),
            onTap: () => showSnackbar(context, "Russia"),
          ),
          ListTile(
            title: const Text("Australia"),
            onTap: () => showSnackbar(context, "Australia"),
          ),
          ListTile(
            title: const Text("India"),
            onTap: () => showSnackbar(context, "India"),
          ),
          ListTile(
            title: const Text("France"),
            onTap: () => showSnackbar(context, "France"),
          ),
          ListTile(
            title: const Text("Saudi Arabia"),
            onTap: () => showSnackbar(context, "Saudi Arabia"),
          ),
          ListTile(
            title: const Text("Finland"),
            onTap: () => showSnackbar(context, "Finland"),
          ),
          ListTile(
            title: const Text("Italy"),
            onTap: () => showSnackbar(context, "Italy"),
          ),
        ],
      ),
    );
  }

  void showSnackbar(BuildContext context, String countryName) {
    final snackBar = SnackBar(
      backgroundColor: Colors.green,
      content: Text("You selected $countryName"),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
