import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/pages/list_provider.dart';
import 'package:flutter_application/pages/second.dart';
import 'package:provider/provider.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberList>(
      builder: (context, numberProvider, child) => Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('List'),
          ),
          floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              label: ButtonBar(
                children: [
                  IconButton(
                    onPressed: () {
                      numberProvider.addNumbers();
                    },
                    icon: const Icon(Icons.add),
                  ),
                  IconButton(
                    onPressed: () {
                      numberProvider.subNumber();
                    },
                    icon: const Icon(CupertinoIcons.minus),
                  )
                ],
              )),
          body: Column(
            children: [
              Text(numberProvider.numbers.last.toString()),
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.all(16.0),
                    itemCount: numberProvider.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(numberProvider.numbers[index].toString());
                    }),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 100, 16),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Second()));
                    },
                    child: const Text('Next Page')),
              )
            ],
          )),
    );
  }
}
