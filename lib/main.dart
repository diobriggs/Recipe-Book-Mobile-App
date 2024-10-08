import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

void main() {
  runApp(const RecipeBookApp());
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
      home: const HomeScreen(),
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
    {
      'name': 'Hamburger Soup',
      'details':
        'Ingredients:\n'
        '• 1 ½ pounds ground beef\n'
        '• 1 medium onion, finely chopped\n'
        '• 3 (14.5 ounce) cans beef consomme\n'
        '• 1 (28 ounce) can diced tomatoes\n'
        '• 2 cups water\n'
        '• 1 (10.75 ounce) can condensed tomato soup\n'
        '• 4 carrots, finely chopped\n'
        '• 3 stalks celery, finely chopped\n'
        '• 4 tablespoons pearl barley\n'
        '• ½ teaspoon dried thyme\n'
        '• 1 bay leaf\n\n'
        'Directions:\n'
        '1. Turn on a multi-functional pressure cooker and select Saute function.\n'
        '2. Cook and stir beef and onion until browned, 5 to 10 minutes.\n'
        '3. Pour in beef consomme, tomatoes, water, and tomato soup.\n'
        '4. Add carrots, celery, barley, thyme, and bay leaf.\n'
        '5. Close and lock the lid. Select Soup function; set timer for 30 minutes.\n'
        '6. Allow 10 to 15 minutes for pressure to build.\n'
        '7. Release pressure using the natural-release method, about 10 minutes.',
      'image': 'assets/hamburgersoup.jpg',
    },
    {
      'name': 'Spicy Honey-Chipotle Salmon Bowl',
      'details':
        'Ingredients:\n'
        '• 2 cups low-sodium chicken broth\n'
        '• 1 teaspoon butter\n'
        '• ½ cup brown rice, rinsed well\n'
        '• 1 ½ cups chopped fresh green beans\n'
        '• 1 medium sweet potato, chopped\n'
        '• 1 tablespoon olive oil\n'
        '• Salt and ground black pepper to taste\n'
        '• 1 tablespoon honey\n'
        '• 1 teaspoon ground dried chipotle pepper\n'
        '• ½ teaspoon granulated garlic\n'
        '• 2 (4 ounce) frozen salmon fillets with skin\n'
        '• 1 tablespoon chopped toasted pecans\n\n'
        'Directions:\n'
        '1. Bring chicken broth and butter to a boil in a saucepan.\n'
        '2. Add rinsed brown rice, cover, and simmer until rice is tender.\n'
        '3. Preheat the oven to 400°F and line a baking sheet with parchment paper.\n'
        '4. Toss green beans, sweet potato, olive oil, salt, and pepper.\n'
        '5. Mix honey, chipotle pepper, garlic, and brush onto frozen salmon.\n'
        '6. Roast salmon and vegetables for 30-35 minutes.\n'
        '7. Serve over brown rice and sprinkle toasted pecans on top.',
      'image': 'assets/salmonbowl.jpg',
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
