import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Provider',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: ListView(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Enter Item'),
                  ),
                  const SizedBox(height: 8.0),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.lightBlue.shade600,
                          backgroundColor: Colors.grey.shade50,
                          side: BorderSide(
                              width: 2.0, color: Colors.lightBlue.shade200)),
                      onPressed: () {},
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 18),
                      )),
                  const SizedBox(height: 12.0),
                  const Center(
                      child: Text(
                    'ITEMS LIST',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Card(
                          elevation: 5.0,
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            leading: CircleAvatar(child: Text('${index + 1}')),
                            title: const Center(child: Text('QWERTY')),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(CupertinoIcons.delete)),
                          )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
