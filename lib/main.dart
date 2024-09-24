import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

void main() {
  runApp(RecipeBookApp());
}

class RecipeBookApp extends StatelessWidget {
  const RecipeBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = const[
    {
      'name': 'Cajun Seasoning Chicken Pasta',
      'details': 
        'Ingredients:\n'
        'Cajun Seasoning:\n'
        '• 2 tsp smoked paprika\n'
        '• 1 tsp oregano\n'
        '• 1 tsp thyme\n'
        '• 1/2 tsp garlic powder\n'
        '• 1/2 tsp onion powder\n'
        '• 1/4 tsp cayenne pepper\n'
        '• 1/4 tsp black pepper\n'
        '• 1/4 tsp salt\n\n'
        'Chicken Pasta:\n'
        '• 1 Tbsp olive oil\n'
        '• 1 Tbsp butter\n'
        '• 1 lb. boneless, skinless chicken breast\n'
        '• 1 yellow onion, diced\n'
        '• 1/2 lb. penne pasta (uncooked)\n'
        '• 15 oz. fire roasted diced tomatoes\n'
        '• 2 cups chicken broth\n'
        '• 2 oz. cream cheese\n'
        '• 3 green onions, sliced\n\n'
        'Instructions:\n'
        '1. Combine the Cajun seasoning ingredients in a small bowl.\n'
        '2. Heat olive oil and butter in a large skillet over medium-high heat.\n'
        '3. Add the chicken breast, diced onion, and sauté until the chicken is cooked through.\n'
        '4. Add penne pasta, diced tomatoes, and chicken broth to the skillet.\n'
        '5. Bring to a boil, cover, and reduce heat to low.\n'
        '6. Simmer for 10-12 minutes or until pasta is tender.\n'
        '7. Stir in cream cheese until melted and creamy.\n'
        '8. Garnish with sliced green onions and serve.',
      'image': 'assets/cajunpasta.jpg',
    },
    {
      'name': 'Stuffed Eggplant',
      'details': 
        'Ingredients:\n'
        '• 2 medium eggplants, halved and hollowed out\n'
        '• 2 tbsp olive oil\n'
        '• ½ cup chopped onion\n'
        '• 2 cloves garlic, crushed\n'
        '• 1 tsp dried oregano\n'
        '• Freshly ground black pepper to taste\n'
        '• ¼ cup grated Parmesan cheese\n'
        '• ½ cup bread crumbs\n'
        '• 1 tsp fresh Italian parsley, chopped\n'
        '• 2 cups tomato sauce\n'
        '• 1 cup shredded mozzarella cheese\n\n'
        'Instructions:\n'
        '1. Preheat the oven to 325°F (165°C).\n'
        '2. Roughly chop the centers of the eggplants.\n'
        '3. Heat olive oil in a skillet, cook eggplant, onion, garlic, oregano, and pepper until lightly browned.\n'
        '4. Spoon the mixture into hollowed-out eggplants.\n'
        '5. Sprinkle with Parmesan cheese, bread crumbs, and parsley.\n'
        '6. Place in a baking dish, cover with tomato sauce and mozzarella cheese.\n'
        '7. Bake for 30 minutes until eggplant is tender and cheese is bubbly.',
      'image': 'assets/stuffed_eggplant.jpg',
    },
    {
      'name': 'Burek',
      'details': 
        'Ingredients:\n'
        '• 1 pound lean ground beef\n'
        '• 1 tablespoon ground allspice\n'
        '• 1 tablespoon paprika\n'
        '• salt and freshly ground pepper to taste\n'
        '• 1 medium potato, finely chopped\n'
        '• 1 medium onion, chopped\n'
        '• 16 sheets phyllo dough, thawed\n'
        '• ¼ cup melted butter\n\n'
        'Directions:\n'
        '1. Preheat the oven to 400°F (200°C).\n'
        '2. Cook and stir ground beef in a large skillet over medium heat until browned, 5-7 minutes.\n'
        '3. Stir in allspice, paprika, salt, and pepper, then add potato and onion.\n'
        '4. Stack 2 sheets of phyllo dough, add 1/8 of the beef mixture along one edge, and roll it into a tube.\n'
        '5. Coil the tube into a snail shape and place on a baking sheet; repeat 7 more times.\n'
        '6. Brush with melted butter and bake for 20-30 minutes until golden brown.',
      'image': 'assets/burek.jpg',
    },
    {
      'name': 'Jamaican Oxtail',
      'details': 
        'Ingredients:\n'
        '• 2½ pounds oxtail\n'
        '• 1 tablespoon soy sauce\n'
        '• 1 tablespoon Worcestershire sauce\n'
        '• 1 tablespoon salt\n'
        '• 1 tablespoon white sugar\n'
        '• 1 tablespoon garlic and herb seasoning\n'
        '• 1 teaspoon browning sauce\n'
        '• ¼ teaspoon ground paprika\n'
        '• ¼ teaspoon ground cayenne pepper\n'
        '• ¼ teaspoon ground black pepper\n'
        '• 2 tablespoons vegetable oil\n'
        '• 2 carrots, thinly sliced\n'
        '• 2 stalks celery, thinly sliced\n'
        '• 1 onion, chopped\n'
        '• 4 garlic cloves, minced\n'
        '• 3 cups beef broth\n'
        '• Fresh thyme, rosemary, and bay leaf\n'
        '• 2 tablespoons unsalted butter\n\n'
        'Directions:\n'
        '1. Rub oxtail with soy sauce mixture (soy sauce, Worcestershire, etc.).\n'
        '2. Heat oil and sear oxtail, 3 minutes per side, then set aside.\n'
        '3. Sauté carrots, celery, onion, and garlic, then add broth, herbs, and oxtail.\n'
        '4. Simmer for 3 hours until tender, then reduce sauce for 5 minutes to thicken.',
      'image': 'assets/oxtail.jpg',

    },
  ];

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Book')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
