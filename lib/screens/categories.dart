import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _onSelectCategory(BuildContext context) {
    print("yuhu");
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const MealsScreen(meals: [], title: ""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pick your category")),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          // availableCategories.map((category) => CategoryGridItem(category))
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onTapCategory: () => _onSelectCategory(context),
            )
        ],
      ),
    );
  }
}
