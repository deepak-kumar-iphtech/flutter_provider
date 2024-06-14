import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/mainscreens/item_provider.dart';
import 'package:provider/provider.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemProvider>(
      builder: (context, data, child) => Expanded(
        child: ListView.builder(
          itemCount: data.items.length,
          itemBuilder: (context, index) {
            final item = data.items[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  leading: CircleAvatar(child: Text('${index + 1}')),
                  title: Center(child: Text(item)),
                  trailing: IconButton(
                      onPressed: () {
                        data.removeItem(index);
                      },
                      icon: const Icon(CupertinoIcons.delete)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
