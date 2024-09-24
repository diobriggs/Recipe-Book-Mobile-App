import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, String> recipe;

  const DetailsScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe['name']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Display the recipe details
                    Text(
                      recipe['details']!,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            // Display the image on the right
            Container(
              width: 200, // Set width
              height: 200, // Set height
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), // Optional: rounded corners
                image: DecorationImage(
                  image: AssetImage(recipe['image']!), // Load image from assets
                  fit: BoxFit.cover, // Ensures the image covers the container
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
