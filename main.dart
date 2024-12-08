import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Fruits Combination",
      "Vegetables Combination",
      "Grains Combination",
      "Proteins Combination",
      "Dairy",
      "Mixed Meals",
      "Smoothies",
      "Desserts"
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeSearchScreen(categories: categories),
    );
  }
}

class RecipeSearchScreen extends StatefulWidget {
  final List<String> categories;

  const RecipeSearchScreen({required this.categories}) : super();

  @override
  _RecipeSearchScreenState createState() => _RecipeSearchScreenState();
}

class _RecipeSearchScreenState extends State<RecipeSearchScreen> {
  String? selectedCategory;
  String? selectedDuration;
  List<Recipe> choosedRecipes = [];

  final List<Recipe> recipes = [
    Recipe(category: 'Fruits Combination', name: 'Banana & Avocado', duration: '10 mins'),
    Recipe(category: 'Fruits Combination', name: 'Mango & Banana', duration: '10 mins'),
    Recipe(category: 'Fruits Combination', name: 'Strawberry & Yogurt Blend', duration: '20 mins'),
    Recipe(category: 'Fruits Combination', name: 'Kiwi & Banana', duration: '10 mins'),
    Recipe(category: 'Fruits Combination', name: 'Apricot & Peach Blend', duration: '20 mins'),
    Recipe(category: 'Fruits Combination', name: 'Grape & Apple Puree', duration: '10 mins'),
    Recipe(category: 'Fruits Combination', name: 'Cantaloupe & Yogurt Blend', duration: '15 mins'),
    Recipe(category: 'Fruits Combination', name: 'Cherry & Banana Blend', duration: '10 mins'),
    Recipe(category: 'Fruits Combination', name: 'Banana & Kiwi Puree', duration: '15 mins'),
    Recipe(category: 'Fruits Combination', name: 'Apple & Grape Puree', duration: '10 mins'),
    Recipe(category: 'Fruits Combination', name: 'Peach & Mango Mash', duration: '20 mins'),
    Recipe(category: 'Fruits Combination', name: 'Pineapple & Banana Puree', duration: '10 mins'),
    Recipe(category: 'Fruits Combination', name: 'Strawberry & Raspberry Puree', duration: '20 mins'),
    Recipe(category: 'Fruits Combination', name: 'Kiwi & Mango Mash', duration: '30 mins'),
    Recipe(category: 'Fruits Combination', name: 'Watermelon & Peach Puree', duration: '15 mins'),
    Recipe(category: 'Fruits Combination', name: 'Banana & Cherry Blend', duration: '10 mins'),
    Recipe(category: 'Fruits Combination', name: 'Cantaloupe & Strawberry Puree', duration: '20 mins'),
    Recipe(category: 'Fruits Combination', name: 'Blueberry & Yogurt Mix', duration: '10 mins'),

    Recipe(category: 'Vegetables Combination', name: 'Carrot & Pea Mash', duration: '20 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Sweet Potato & Spinach Puree', duration: '30 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Broccoli & Cauliflower Mash', duration: '30 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Zucchini & Potato Puree', duration: '20 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Spinach & Potato Mash', duration: '20 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Pea & Carrot Blend', duration: '20 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Sweet Potato & Broccoli Puree', duration: '30 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Bell Pepper & Zucchini Blend', duration: '20 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Cauliflower & Broccoli Puree', duration: '30 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Spinach & Zucchini Mash', duration: '20 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Tomato & Carrot Blend', duration: '10 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Eggplant & Bell Pepper Mash', duration: '30 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Broccoli & Pea Puree', duration: '20 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Cauliflower & Carrot Blend', duration: '20 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Zucchini & Green Bean Puree', duration: '30 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Sweet Potato & Eggplant Mash', duration: '30 mins'),
    Recipe(category: 'Vegetables Combination', name: 'Tomato & Beet Puree', duration: '20 mins'),

    Recipe(category: 'Grains Combination', name: 'Oatmeal & Banana Mash', duration: '10 mins'),
    Recipe(category: 'Grains Combination', name: 'Barley & Apple Mash', duration: '20 mins'),
    Recipe(category: 'Grains Combination', name: 'Oatmeal & Yogurt Mix', duration: '10 mins'),
    Recipe(category: 'Grains Combination', name: 'Rice & Chicken Puree', duration: '30 mins'),
    Recipe(category: 'Grains Combination', name: 'Oatmeal & Blueberry Mash', duration: '10 mins'),
    Recipe(category: 'Grains Combination', name: 'Quinoa & Carrot Mash', duration: '20 mins'),
    Recipe(category: 'Grains Combination', name: 'Rice & Avocado Puree', duration: '15 mins'),
    Recipe(category: 'Grains Combination', name: 'Rice & Sweet Potato Blend', duration: '20 mins'),
    Recipe(category: 'Grains Combination', name: 'Oatmeal & Apricot Mash', duration: '10 mins'),
    Recipe(category: 'Grains Combination', name: 'Rice & Lentil Mix', duration: '30 mins'),
    Recipe(category: 'Grains Combination', name: 'Oatmeal & Mango Blend', duration: '10 mins'),
    Recipe(category: 'Grains Combination', name: 'Rice & Cauliflower Puree', duration: '20 mins'),
    Recipe(category: 'Grains Combination', name: 'Rice & Zucchini Mash', duration: '20 mins'),
    Recipe(category: 'Grains Combination', name: 'Barley & Sweet Potato Blend', duration: '30 mins'),
    Recipe(category: 'Grains Combination', name: 'Oatmeal & Fig Puree', duration: '15 mins'),

    Recipe(category: 'Proteins Combination', name: 'Lentil & Sweet Potato Mash', duration: '20 mins'),
    Recipe(category: 'Proteins Combination', name: 'Chicken & Carrot Mash', duration: '30 mins'),
    Recipe(category: 'Proteins Combination', name: 'Beef & Vegetable Mash', duration: '30 mins'),
    Recipe(category: 'Proteins Combination', name: 'Fish & Potato Puree', duration: '30 mins'),
    Recipe(category: 'Proteins Combination', name: 'Lentil & Rice Blend', duration: '30 mins'),
    Recipe(category: 'Proteins Combination', name: 'Chickpea & Avocado Mash', duration: '20 mins'),
    Recipe(category: 'Proteins Combination', name: 'Fish & Sweet Potato Blend', duration: '30 mins'),
    Recipe(category: 'Proteins Combination', name: 'Lentil & Zucchini Puree', duration: '20 mins'),
    Recipe(category: 'Proteins Combination', name: 'Chickpea & Cauliflower Mash', duration: '20 mins'),
    Recipe(category: 'Proteins Combination', name: 'Fish & Broccoli Puree', duration: '30 mins'),
    Recipe(category: 'Proteins Combination', name: 'Lentil & Eggplant Blend', duration: '30 mins'),
    Recipe(category: 'Proteins Combination', name: 'Chickpea & Rice Mash', duration: '20 mins'),
    Recipe(category: 'Proteins Combination', name: 'Chicken & Avocado Mix', duration: '20 mins'),
    Recipe(category: 'Proteins Combination', name: 'Beef & Sweet Potato Blend', duration: '30 mins'),
    Recipe(category: 'Proteins Combination', name: 'Fish & Zucchini Puree', duration: '30 mins'),
    Recipe(category: 'Proteins Combination', name: 'Chickpea & Spinach Blend', duration: '20 mins'),
    Recipe(category: 'Proteins Combination', name: 'Chicken & Broccoli Mash', duration: '30 mins'),
    Recipe(category: 'Proteins Combination', name: 'Beef & Pea Puree', duration: '30 mins'),
    Recipe(category: 'Proteins Combination', name: 'Fish & Carrot Mash', duration: '20 mins'),
    Recipe(category: 'Proteins Combination', name: 'Lentil & Potato Blend', duration: '20 mins'),
    Recipe(category: 'Proteins Combination', name: 'Chickpea & Tomato Puree', duration: '20 mins'),
    Recipe(category: 'Proteins Combination', name: 'Chicken & Apple Blend', duration: '20 mins'),

    Recipe(category: 'Dairy', name: 'Yogurt & Banana Mash', duration: '10 mins'),
    Recipe(category: 'Dairy', name: 'Yogurt & Blueberry Puree', duration: '10 mins'),
    Recipe(category: 'Dairy', name: 'Yogurt & Peach Blend', duration: '10 mins'),
    Recipe(category: 'Dairy', name: 'Yogurt & Raspberry Blend', duration: '10 mins'),
    Recipe(category: 'Dairy', name: 'Yogurt & Strawberry Mix', duration: '10 mins'),
    Recipe(category: 'Dairy', name: 'Yogurt & Mango Puree', duration: '15 mins'),
    Recipe(category: 'Dairy', name: 'Yogurt & Kiwi Blend', duration: '15 mins'),
    Recipe(category: 'Dairy', name: 'Yogurt & Apricot Blend', duration: '15 mins'),
    Recipe(category: 'Dairy', name: 'Cottage Cheese & Banana Mash', duration: '20 mins'),
    Recipe(category: 'Dairy', name: 'Yogurt & Sweet Potato Blend', duration: '20 mins'),
    Recipe(category: 'Dairy', name: 'Cottage Cheese & Mixed Fruit Blend', duration: '20 mins'),
    Recipe(category: 'Dairy', name: 'Cream Cheese & Strawberry Puree', duration: '30 mins'),
    Recipe(category: 'Dairy', name: 'Yogurt & Grape Blend', duration: '10 mins'),

    Recipe(category: 'Mixed Meals', name: 'Sweet Potato & Lentil Mash', duration: '30 mins'),
    Recipe(category: 'Mixed Meals', name: 'Avocado & Chicken Puree', duration: '30 mins'),
    Recipe(category: 'Mixed Meals', name: 'Pea & Rice Blend', duration: '20 mins'),
    Recipe(category: 'Mixed Meals', name: 'Lentil & Spinach Blend', duration: '20 mins'),
    Recipe(category: 'Mixed Meals', name: 'Chicken & Sweet Potato Mash', duration: '30 mins'),
    Recipe(category: 'Mixed Meals', name: 'Rice & Veggie Puree', duration: '20 mins'),
    Recipe(category: 'Mixed Meals', name: 'Chickpea & Carrot Mash', duration: '20 mins'),
    Recipe(category: 'Mixed Meals', name: 'Lentil & Broccoli Mash', duration: '30 mins'),
    Recipe(category: 'Mixed Meals', name: 'Vegetable & Chicken Stew', duration: '45 mins'),
    Recipe(category: 'Mixed Meals', name: 'Sweet Potato & Spinach Blend', duration: '20 mins'),
    Recipe(category: 'Mixed Meals', name: 'Beef & Zucchini Puree', duration: '30 mins'),
    Recipe(category: 'Mixed Meals', name: 'Lentil & Sweet Potato Stew', duration: '30 mins'),
    Recipe(category: 'Mixed Meals', name: 'Tofu & Vegetable Blend', duration: '30 mins'),
    Recipe(category: 'Mixed Meals', name: 'Rice & Lentil Stew', duration: '30 mins'),
    Recipe(category: 'Mixed Meals', name: 'Quinoa & Eggplant Puree', duration: '30 mins'),

    Recipe(category: 'Smoothies', name: 'Banana & Yogurt Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Berry & Oat Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Peach & Avocado Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Kiwi & Banana Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Strawberry & Yogurt Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Blueberry & Oat Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Watermelon & Mint Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Banana & Berry Blend', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Mango & Banana Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Carrot & Apple Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Strawberry & Banana Blend', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Kiwi & Berry Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Avocado & Banana Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Pineapple & Banana Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Mango & Coconut Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Banana & Coconut Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Strawberry & Kiwi Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Apple & Yogurt Blend', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Mango & Orange Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Watermelon & Banana Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Mango & Berry Blend', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Strawberry & Coconut Smoothie', duration: '10 mins'),
    Recipe(category: 'Smoothies', name: 'Papaya & Spinach Smoothie', duration: '10 mins'),

    Recipe(category: 'Desserts', name: 'Frozen Banana Bites', duration: '10 mins'),
    Recipe(category: 'Desserts', name: 'Avocado Chocolate Mousse', duration: '20 mins'),
    Recipe(category: 'Desserts', name: 'Yogurt Parfait with Fruit', duration: '15 mins'),
    Recipe(category: 'Desserts', name: 'Banana Oatmeal Cookies', duration: '20 mins'),
    Recipe(category: 'Desserts', name: 'Peach Yogurt Cups', duration: '10 mins'),
    Recipe(category: 'Desserts', name: 'Mashed Banana and Oatmeal Muffins', duration: '20 mins'),
    Recipe(category: 'Desserts', name: 'Avocado and Banana Ice Cream', duration: '30 mins'),
    Recipe(category: 'Desserts', name: 'Sweet Potato and Apple Mash', duration: '20 mins'),
    Recipe(category: 'Desserts', name: 'Peanut Butter Banana Bites', duration: '10 mins'),
    Recipe(category: 'Desserts', name: 'Oat and Date Energy Bites', duration: '15 mins'),
    Recipe(category: 'Desserts', name: 'Chocolate Avocado Brownies', duration: '30 mins'),
    Recipe(category: 'Desserts', name: 'Apple Slices with Nut Butter', duration: '10 mins'),
    Recipe(category: 'Desserts', name: 'Avocado and Yogurt Dip', duration: '10 mins'),
    Recipe(category: 'Desserts', name: 'Fruit Salad with Yogurt Dressing', duration: '10 mins'),
    Recipe(category: 'Desserts', name: 'Chocolate Banana Smoothie', duration: '10 mins'),
    Recipe(category: 'Desserts', name: 'Honeydew Melon Sorbet', duration: '20 mins'),
    Recipe(category: 'Desserts', name: 'Pineapple Coconut Popsicles', duration: '10 mins'),
    Recipe(category: 'Desserts', name: 'Baked Cinnamon Apples', duration: '20 mins'),
    Recipe(category: 'Desserts', name: 'Raspberry Yogurt Bark', duration: '15 mins'),
  ];

  void chooseRecipes() {
    setState(() {
      choosedRecipes = recipes.where((recipe) =>
      recipe.category == selectedCategory &&
          recipe.duration == selectedDuration).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Happy Kids Meal'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 30),
      ),
      body: Container(
        color: Colors.purple[60],
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Text(
                'Delicious and nutritious recipes for your little ones!',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 0),
              Image.asset(
                '../assets/BackgroundEraser_20240909_152450763.png',
                height: 300,
              ),
              const SizedBox(height: 0),
              const Text(
                'Choose a category!',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10),
              DropdownButton<String>(
                value: selectedCategory,
                hint: const Text('Choose a Category'),
                items: widget.categories.map((String category) {
                  return DropdownMenuItem<String>(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
              ),
              const SizedBox(height: 10),
              const Text('Select Duration:'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text('10 mins'),
                      value: '10 mins',
                      groupValue: selectedDuration,
                      onChanged: (value) {
                        setState(() {
                          selectedDuration = value;
                        });
                      },
                    ),
                  ),
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text('20 mins'),
                      value: '20 mins',
                      groupValue: selectedDuration,
                      onChanged: (value) {
                        setState(() {
                          selectedDuration = value;
                        });
                      },
                    ),
                  ),
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text('30 mins'),
                      value: '30 mins',
                      groupValue: selectedDuration,
                      onChanged: (value) {
                        setState(() {
                          selectedDuration = value;
                        });
                      },
                    ),
                  ),
                  Flexible(
                    child: RadioListTile<String>(
                      title: const Text('45 mins'),
                      value: '45 mins',
                      groupValue: selectedDuration,
                      onChanged: (value) {
                        setState(() {
                          selectedDuration = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  chooseRecipes();
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Recipes Found'),
                        content: SizedBox(
                          width: double.maxFinite,
                          child: ListView.builder(
                            itemCount: choosedRecipes.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(choosedRecipes[index].name),
                                subtitle: Text(choosedRecipes[index].duration),
                              );
                            },
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Show Recipes'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class Recipe {
  final String category;
  final String name;
  final String duration;

  Recipe({required this.category, required this.name, required this.duration});
}