import 'package:adv_basics/data/sectionData8/dummy_data.dart';
import 'package:adv_basics/screens/sectionScreens8/meals.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/widgets/sectionWidget8/category_grid_item.dart';

class CategoiresScreen extends StatelessWidget {
  const CategoiresScreen({super.key});

  void _selectCategory(BuildContext context) {
    // Navigator.push(context, route)

    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealsScreen(
              title: "some title",
              meals: [],
            )));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Your Categories'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: width < 600 ? 2 : 4,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // alternaitve to for map
          for (final category in availableCategories)
            CategoryGridItem(
                category: category,
                onSelectCategory: () => _selectCategory(context)),
        ],
      ),
    );
  }
}
