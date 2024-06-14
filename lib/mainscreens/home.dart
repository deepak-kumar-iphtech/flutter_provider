import 'package:flutter/material.dart';
import 'package:flutter_application/mainscreens/item_provider.dart';
import 'package:flutter_application/mainscreens/list_view.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Provider',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Consumer<ItemProvider>(
        builder: (context, data, child) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 16.0),
          child: Column(
            children: [
              SizedBox(
                height: 130,
                child: ListView(
                  children: [
                    TextField(
                        controller: myController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Item')),
                    const SizedBox(height: 8.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.lightBlue.shade600,
                          backgroundColor: Colors.grey.shade50,
                          side: BorderSide(
                              width: 2.0, color: Colors.lightBlue.shade200)),
                      onPressed: () {
                        if (myController.text.isNotEmpty) {
                          data.addItem(myController.text);
                        } else {
                          alertDilogBox(context);
                        }
                        myController.text = '';
                      },
                      child: const Text(
                        'Add Item',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    const Center(
                      child: Text(
                        'ITEMS LIST',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const ListViewItems()
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> alertDilogBox(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('No Item...!'),
          content: const Text('Try to add atleast one item.'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK')),
          ],
        );
      },
    );
  }
}
