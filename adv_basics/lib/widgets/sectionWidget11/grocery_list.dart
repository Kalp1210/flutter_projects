import 'dart:convert';
// import 'dart:ffi';

import 'package:adv_basics/data/sectionData11/categories.dart';
import 'package:adv_basics/models/sectionModels11/grocery_item.dart';
import 'package:adv_basics/widgets/sectionWidget11/new_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:adv_basics/data/sectionData11/dummy_items.dart';

// ===================================================================
// THIS IS WHAT THE CODE BE IF WE USED FUTURE BUILDER INSTEAD NORMAL
// BUT THIS IS NOT THE BEST METHOD FOR THIS APP AS IT HAS SOME ISSUES
// ====================================================================

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  List<GroceryItem> _groceryItems = [];
  // var _isLoading = true;
  // String? _error;
  // late tells that there is no intial value but it will be assigned later
  late Future<List<GroceryItem>>? _loadedItems;

  @override
  void initState() {
    super.initState();
    _loadedItems = _loadItems();
  }

  Future<List<GroceryItem>> _loadItems() async {
    final url = Uri.https(
        'flutter-prep2912-default-rtdb.firebaseio.com', 'shopping-list.json');
    // try {
    final response = await http.get(url);
    if (response.statusCode >= 400) {
      // yeh future builder ke andar hai toh yeh setState nahi use kar sakte
      // setState(
      //   () {
      //     _error = 'Failed to load items. Please try again later.';
      //   },
      // );

      //this is the way to throw an exception in future builder so that niche woh snapshot.error me aa jaye
      throw Exception('Failed to load items. Please try again later.');
    }

    if (response.body == 'null') {
      // setState(() {
      //   _isLoading = false;
      // });
      return [];
    }

    final Map<String, dynamic> listData = json.decode(response.body);
    final List<GroceryItem> loadedItems = [];

    for (final item in listData.entries) {
      final category = categories.entries
          .firstWhere(
              (catItem) => catItem.value.title == item.value['category'])
          .value;
      loadedItems.add(
        GroceryItem(
          id: item.key,
          name: item.value['name'],
          quantity: item.value['quantity'],
          category: category,
        ),
      );
    }
    return loadedItems;

    // setState(() {
    //   _groceryItems = loadedItems;
    //   _isLoading = false;
    // });
    // } catch (error) {
    //   setState(
    //     () {
    //       _error = 'Something went wrong! Please try again later.';
    //     },
    //   );
    // }
  }

  void _addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(
        builder: (ctx) => NewItem(),
      ),
    );

    if (newItem == null) {
      return;
    }

    setState(() {
      _groceryItems.add(newItem);
    });
  }

// generally we dont use async for removeItem but here we are using it because we are also considering theoption that some error might show up while deleting the item
  void _removeItem(GroceryItem item) async {
    final index = _groceryItems.indexOf(item);
    setState(() {
      _groceryItems.remove(item);
    });
    final url = Uri.https('flutter-prep2912-default-rtdb.firebaseio.com',
        'shopping-list/${item.id}.json');
    final response = await http.delete(url);
    if (response.statusCode >= 400) {
      setState(() {
        _groceryItems.insert(index, item);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Widget content = const Center(
    //   child: Text('No items added yet.'),
    // );

    // if (_isLoading) {
    //   content = const Center(
    //     child: CircularProgressIndicator(),
    //   );
    // }

    // if (_error != null) {
    //   content = Center(
    //     child: Text(_error!),
    //   );
    // }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: FutureBuilder(
        future: _loadedItems,
        builder: (context, snapshot) {
          // use snapshot.connectionState to check the state of the future

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          }

          if (snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No items added yet.'),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (ctx, index) => Dismissible(
              key: ValueKey(snapshot.data![index].id),
              onDismissed: (direction) {
                _removeItem(snapshot.data![index]);
              },
              child: ListTile(
                title: Text(snapshot.data![index].name),
                leading: Container(
                  width: 24,
                  height: 24,
                  color: snapshot.data![index].category.color,
                ),
                trailing: Text(snapshot.data![index].quantity.toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}
