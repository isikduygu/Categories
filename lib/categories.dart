import 'package:flutter/material.dart';
import 'package:recipe/color.dart';
class CategoriesPage extends StatelessWidget {
  final List<Category> categories = [
    Category(
      id: 1,
      name: 'Mexican Recipes',
      image: 'assets/mexican.png',
      subcategories: [
        Subcategory(
          id: 1,
          name: 'Subcategory 1',
          image: 'assets/mexican.png',
          subsubcategories: [
            SubSubcategory(
              id: 4,
              name: 'Subcategory 4',
              image: 'assets/turkish.png',
            )
          ],
        ),
        Subcategory(
          id: 2,
          name: 'Subcategory 2',
          image: 'assets/mexican.png',
          subsubcategories: [
            SubSubcategory(
              id: 4,
              name: 'Subcategory 4',
              image: 'assets/turkish.png',
            )
          ],        ),      ],
    ),
    Category(
      id: 2,
      name: 'Turkish Recipes',
      image: 'assets/turkish.png',
      subcategories: [
        Subcategory(
          id: 3,
          name: 'Subcategory 3',
          image: 'assets/turkish.png',
          subsubcategories: [
            SubSubcategory(
              id: 4,
              name: 'Subcategory 4',
              image: 'assets/turkish.png',
            )
          ],
        ),
        Subcategory(
          id: 4,
          name: 'Subcategory 4',
          image: 'assets/turkish.png',
          subsubcategories: [
            SubSubcategory(
              id: 4,
              name: 'Subcategory 4',
              image: 'assets/turkish.png',
            )
          ],
        ),
      ],
    ),
    Category(
      id: 3,
      name: 'Italian Recipes',
      image: 'assets/italian.png',
      subcategories: [
        Subcategory(
          id: 5,
          name: 'Subcategory 3',
          image: 'assets/italian.png',
          subsubcategories: [
            SubSubcategory(
              id: 4,
              name: 'Subcategory 4',
              image: 'assets/turkish.png',
            )
          ],
        ),
        Subcategory(
          id: 6,
          name: 'Subcategory 4',
          image: 'assets/italian.png',
          subsubcategories: [
            SubSubcategory(
              id: 4,
              name: 'Subcategory 4',
              image: 'assets/turkish.png',
            )
          ],
        ),
      ],
    ),
    Category(
      id: 4,
      name: 'French Recipes',
      image: 'assets/french.png',
      subcategories: [
        Subcategory(
          id: 7,
          name: 'Subcategory 3',
          image: 'assets/french.png',
          subsubcategories: [
            SubSubcategory(
              id: 4,
              name: 'Subcategory 4',
              image: 'assets/turkish.png',
            )
          ],
        ),
        Subcategory(
          id: 8,
          name: 'Subcategory 4',
          image: 'assets/french.png',
          subsubcategories: [
            SubSubcategory(
              id: 4,
              name: 'Subcategory 4',
              image: 'assets/turkish.png',
            )
          ],
        ),
      ],
    ),
    Category(
      id: 5,
      name: 'Japanese Recipes',
      image: 'assets/japanese.png',
      subcategories: [
        Subcategory(
          id: 9,
          name: 'Subcategory 3',
          image: 'assets/japanese.png',
          subsubcategories: [
            SubSubcategory(
              id: 4,
              name: 'Subcategory 4',
              image: 'assets/turkish.png',
            )
          ],
        ),
        Subcategory(
          id: 10,
          name: 'Subcategory 4',
          image: 'assets/japanese.png',
          subsubcategories: [
            SubSubcategory(
              id: 4,
              name: 'Subcategory 4',
              image: 'assets/turkish.png',
            )
          ],
        ),
      ],
    ),
    Category(
      id: 6,
      name: 'Spanish Recipes',
      image: 'assets/spanish.png',
      subcategories: [
        Subcategory(
          id: 11,
          name: 'Subcategory 3',
          image: 'assets/spanish.png',
          subsubcategories: [
            SubSubcategory(
            id: 4,
            name: 'Subcategory 4',
            image: 'assets/turkish.png',
          )],
        ),
        Subcategory(
          id: 12,
          name: 'Subcategory 4',
          image: 'assets/spanish.png',
          subsubcategories: [
            SubSubcategory(
            id: 4,
            name: 'Subcategory 4',
            image: 'assets/turkish.png',
          )],
        ),
      ],
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: getTransitionalDecoration(),
          child: Column(
              children: [
          const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'World Cuisine',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),  // add 20.0 pixels of padding to the left and right sides
            child: GridView.builder(
            itemCount: categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 10.0 / 10.0,
            crossAxisCount: 2,
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
            ),
            itemBuilder: (context, index) {
              Category category = categories[index];
              return Card(
                color: Color(0xFFF4E9AD),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(category.image),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0),
                        child: Text(category.name),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SubcategoriesPage(
                          key: UniqueKey(),
                          category: category,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            ),
          ),
        ),
              ],
          ),
        ),
    );
  }
}


class SubcategoriesPage extends StatelessWidget {
  final Category category;

  SubcategoriesPage({required Key key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      body: Container(
      decoration: getTransitionalDecoration(), child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),  // add 20.0 pixels of padding to the left and right sides
          child: GridView.builder(
          itemCount: category.subcategories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 10.0 / 10.0,
          crossAxisCount: 2,
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 15.0,
          ),
        itemBuilder: (context, index) {
          Subcategory subcategory = category.subcategories[index];

          return Card(
            color: Color(0xFFF4E9AD),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(category.image),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0),
                    child: Text(category.name),
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SubSubcategoriesPage( key: UniqueKey(),subcategory : subcategory),
                  ),
                );
              },
            ),
          );
        },
      ),
    ),));
  }
}

class SubSubcategoriesPage extends StatelessWidget {
  final Subcategory subcategory;

  SubSubcategoriesPage({required Key key, required this.subcategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subcategory.name),
      ),
      body: Container(
        decoration: getTransitionalDecoration(),
      child: ListView.builder(
        itemCount: subcategory.subsubcategories.length,
        itemBuilder: (context, index) {
          SubSubcategory subsubcategory = subcategory.subsubcategories[index];
          return Card(
            child: ListTile(
              leading: Image.asset(subsubcategory.image),
              title: Text(subsubcategory.name),
            ),
          );
        },
      ),
    ));
  }
}

class Category {
  final int id;
  final String name;
  final String image;
  final List<Subcategory> subcategories;

  Category({required this.id, required this.name, required this.image, required this.subcategories});
}

class Subcategory {
  final int id;
  final String name;
  final String image;
  final List<SubSubcategory> subsubcategories;

  Subcategory({required this.id, required this.name, required this.image, required this.subsubcategories});
}

class SubSubcategory {
  final int id;
  final String name;
  final String image;

  SubSubcategory({required this.id, required this.name, required this.image});
}