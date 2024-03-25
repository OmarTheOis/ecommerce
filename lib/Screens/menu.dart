import 'package:ecommerce/product_item.dart';
import 'package:ecommerce/theme_manger.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key});

  var formKey = GlobalKey<FormState>();
  List<ProductItems> products = [
    const ProductItems(
        image: "assets/images/image1.jpg",
        name: "Toyota Supra",
        description:
            "Toyota Supra is a sports car and grand tourer manufactured by the Toyota Motor Corporation beginning in 1978.",
        price: "1200",
        sale: "2000",
        reviews: 5.0),
    const ProductItems(
        image: "assets/images/image1.jpg",
        name: "Toyota Supra",
        description:
        "Toyota Supra is a sports car and grand tourer manufactured by the Toyota Motor Corporation beginning in 1978.",
        price: "1200",
        sale: "2000",
        reviews: 5.0),
    const ProductItems(
        image: "assets/images/image1.jpg",
        name: "Toyota Supra",
        description:
        "Toyota Supra is a sports car and grand tourer manufactured by the Toyota Motor Corporation beginning in 1978.",
        price: "1200",
        sale: "2000",
        reviews: 5.0),
    const ProductItems(
        image: "assets/images/image1.jpg",
        name: "Toyota Supra",
        description:
        "Toyota Supra is a sports car and grand tourer manufactured by the Toyota Motor Corporation beginning in 1978.",
        price: "1200",
        sale: "2000",
        reviews: 5.0),
    const ProductItems(
        image: "assets/images/image1.jpg",
        name: "Toyota Supra",
        description:
        "Toyota Supra is a sports car and grand tourer manufactured by the Toyota Motor Corporation beginning in 1978.",
        price: "1200",
        sale: "2000",
        reviews: 5.0),
    const ProductItems(
        image: "assets/images/image1.jpg",
        name: "Toyota Supra",
        description:
        "Toyota Supra is a sports car and grand tourer manufactured by the Toyota Motor Corporation beginning in 1978.",
        price: "1200",
        sale: "2000",
        reviews: 5.0),
    const ProductItems(
        image: "assets/images/image1.jpg",
        name: "Toyota Supra",
        description:
        "Toyota Supra is a sports car and grand tourer manufactured by the Toyota Motor Corporation beginning in 1978.",
        price: "1200",
        sale: "2000",
        reviews: 5.0),

  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 14),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: ImageIcon(
                      AssetImage("assets/icons/search.png"),
                      color: ThemeManager.primaryColor,
                    ),
                    hintText: "what do you search for?",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ThemeManager.primaryColor, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ThemeManager.primaryColor, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const ImageIcon(
                AssetImage("assets/icons/cart.png"),
                color: ThemeManager.primaryColor,
              )
            ],
          ),
          SizedBox(height: 10,),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    childAspectRatio: 4 / 5),
                itemCount:products.length ,
                itemBuilder: (context, index) => products[index],),
          )
        ],
      ),
    );
  }
}
