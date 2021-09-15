import 'package:fastfoodapp/Screens/Details_Screen.dart';
import 'package:fastfoodapp/models/Category.dart';
import 'package:flutter/material.dart';

class ListCategory extends StatefulWidget {
  const ListCategory({Key? key}) : super(key: key);

  @override
  _ListCategoryState createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: GridView.builder(
            itemCount: listCategories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              // ignore: unused_local_variable
              Category category = listCategories[index];
              return Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              category.name!,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(category.subtitle!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Hero(
                          tag: category.image,
                          child: Container(
                            width: double.infinity,
                            height: 110,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(category.image),
                                  fit: BoxFit.fitWidth),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFFbb8403),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(9),
                            topLeft: Radius.circular(9),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                    transitionDuration:
                                        const Duration(milliseconds: 500),
                                    reverseTransitionDuration:
                                        const Duration(milliseconds: 500),
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        FadeTransition(
                                          opacity: animation,
                                          child: DetailsScreen(
                                            category: listCategories[index],
                                          ),
                                        )));
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
