import 'package:ecommerce/theme_manger.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key});

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,//: MainAxisAlignment.,
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: ImageIcon(AssetImage("assets/icons/search.png"),color: ThemeManager.primaryColor,),
                    hintText:"what do you search for?",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ThemeManager.primaryColor,
                        width: 1.5
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(35)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ThemeManager.primaryColor,
                          width: 1.5
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(35)),
                    ),
                  ),
                ),
              ),
              const SizedBox(width:15,),
              const ImageIcon(AssetImage("assets/icons/cart.png"),color: ThemeManager.primaryColor,)
            ],
          ),

        ],
      ),
    );
  }
}
