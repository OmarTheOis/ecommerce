import 'package:ecommerce/theme_manger.dart';
import 'package:flutter/material.dart';

class ProductItems extends StatelessWidget {
  final image;
  final name;
  final description;
  final price;
  final sale;
  final double reviews;
  const ProductItems({super.key,
  required this.image ,
  required this.name,
  required this.description,
  required this.price,
  required this.sale,
  required this.reviews});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(5),
      width: size.width * 0.5,
      height: size.height * 0.3,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey.withOpacity(0.5), width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Expanded(
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    )),
              ),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: ThemeManager.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        description,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: ThemeManager.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Egp "+price,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: ThemeManager.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            sale+" Egp",
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
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
                            "Reviews ($reviews)",
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: ThemeManager.primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
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
