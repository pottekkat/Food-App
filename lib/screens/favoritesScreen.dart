import 'package:Meals_App/models/meal.dart';
import 'package:Meals_App/widgets/mealItem.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {

  final List<Meal> favoriteMeals;
  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty){
return Center(
      child: Text('Favorites'),
    );
    }

    else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeals[index].id,
            title: favoriteMeals[index].title,
            imageURL: favoriteMeals[index].imageUrl,
            duration: favoriteMeals[index].duration,
            affordability: favoriteMeals[index].affordability,
            complexity: favoriteMeals[index].complexity,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
    
  }
}