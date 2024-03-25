import 'package:ecommerce/theme_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(15),
      width: size.width * 0.5,
      height: size.height * 0.3,
      decoration: BoxDecoration(
        //color: Colors.red,
        border: Border.all(color: Colors.blueGrey.withOpacity(0.5), width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                  child: Image.asset(
                    "assets/images/image1.jpg",
                    fit: BoxFit.fill,
                  )),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: ImageIcon(
                          AssetImage("assets/bottomNavBarIcons/fav.png"),
                          color: ThemeManager.primaryColor),
                    ),
                  ))
            ],
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Supra toyota",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ThemeManager.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Toyota Supra is a sports car and grand tourer manufactured by the Toyota Motor Corporation beginning in 1978. The name supra is derived from the Latin prefix, meaning above",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ThemeManager.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "EGP 1,200",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: ThemeManager.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "2000 Egp",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              overflow: TextOverflow.ellipsis,
                              color: Colors.blueGrey,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Reviews (5.4)",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: ThemeManager.primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xFFF4B400),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {},
                    child: const ImageIcon(
                      AssetImage("assets/images/Add.png"),
                      color: ThemeManager.primaryColor,
                      size: 40,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
