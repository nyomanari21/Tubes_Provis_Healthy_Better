import 'package:flutter/material.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipes"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: GridView(
            children: [
              // Recipes 1
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Photo
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Image.network("https://www.runtastic.com/blog/wp-content/uploads/2021/05/rfto_blog_streak-running_thumbnail_1200x800.jpg"),
                      )
                    ),
                    // Recipes name
                    Text("Nasi Goreng Bumbu Cabe Ijo", style: TextStyle(fontWeight: FontWeight.bold),),
                    // Calories
                    Text("104 Cal"),
                  ],
                ),
              ),

              // Recipes 2
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Photo
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Image.network("https://www.runtastic.com/blog/wp-content/uploads/2021/05/rfto_blog_streak-running_thumbnail_1200x800.jpg"),
                        )
                    ),
                    // Recipes name
                    Text("Nasi Goreng Kambing Seafood", style: TextStyle(fontWeight: FontWeight.bold),),
                    // Calories
                    Text("104 Cal"),
                  ],
                ),
              ),

              // Recipes 3
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Photo
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Image.network("https://www.runtastic.com/blog/wp-content/uploads/2021/05/rfto_blog_streak-running_thumbnail_1200x800.jpg"),
                        )
                    ),
                    // Recipes name
                    Text("Crispy Tofu Bowl", style: TextStyle(fontWeight: FontWeight.bold),),
                    // Calories
                    Text("104 Cal"),
                  ],
                ),
              ),

              // Recipes 4
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Photo
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Image.network("https://www.runtastic.com/blog/wp-content/uploads/2021/05/rfto_blog_streak-running_thumbnail_1200x800.jpg"),
                        )
                    ),
                    // Recipes name
                    Text("Chicken and Corn Ramen Bowl", style: TextStyle(fontWeight: FontWeight.bold),),
                    // Calories
                    Text("104 Cal"),
                  ],
                ),
              ),

              // Recipes 5
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Photo
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Image.network("https://www.runtastic.com/blog/wp-content/uploads/2021/05/rfto_blog_streak-running_thumbnail_1200x800.jpg"),
                        )
                    ),
                    // Recipes name
                    Text("Okonomiyaki", style: TextStyle(fontWeight: FontWeight.bold),),
                    // Calories
                    Text("104 Cal"),
                  ],
                ),
              ),
            ],

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10
            ),
          ),
        ),
      ),
    );
  }
}
