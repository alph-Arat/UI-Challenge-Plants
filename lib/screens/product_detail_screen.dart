import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge_plants/constants/app_colors.dart';

class ProductDetailScreen extends ConsumerWidget {
  final String image;
  final String plantName;
  final String potType;
  final String temp;
  final String height;
  final String price;
  const ProductDetailScreen(
      {super.key,
      required this.height,
      required this.image,
      required this.plantName,
      required this.potType,
      required this.price,
      required this.temp});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundWhite,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: AppColors.textColor,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(flex: 4, child: Center(child: Image.asset(image))),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 20, bottom: 20),
            child: Text(
              plantName,
              style: GoogleFonts.notoSans(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 20, bottom: 60),
            child: Text(
              "Plants make your life with minimal and happy\nlove the plants more and enjoy life.",
              style: GoogleFonts.inter(
                  color: AppColors.textColor.withOpacity(0.7), fontSize: 12),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.height,
                        color: AppColors.backgroundWhite,
                        size: 35,
                      ),
                      Icon(Icons.thermostat_outlined,
                          color: AppColors.backgroundWhite, size: 35),
                      Icon(Icons.grass_outlined,
                          color: AppColors.backgroundWhite, size: 35),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 20, top: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Height",
                          style: GoogleFonts.inter(
                              color: AppColors.backgroundWhite),
                        ),
                        Text("Temperature",
                            style: GoogleFonts.inter(
                                color: AppColors.backgroundWhite)),
                        Text("Pot",
                            style: GoogleFonts.inter(
                                color: AppColors.backgroundWhite))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          height,
                          style: GoogleFonts.inter(
                              color: AppColors.backgroundWhite.withOpacity(0.6),
                              fontSize: 10),
                        ),
                        Text(
                          temp,
                          style: GoogleFonts.inter(
                              color: AppColors.backgroundWhite.withOpacity(0.6),
                              fontSize: 10),
                        ),
                        Text(
                          potType,
                          style: GoogleFonts.inter(
                              color: AppColors.backgroundWhite.withOpacity(0.6),
                              fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Total Price',
                          style: GoogleFonts.inter(
                              color:
                                  AppColors.backgroundWhite.withOpacity(0.9)),
                          children: [
                            TextSpan(
                              text: '\n$price',
                              style: GoogleFonts.inter(
                                color: AppColors.backgroundWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: AppColors.darkGreen,
                        ),
                        child: Center(
                          child: Text(
                            "Add to Cart",
                            style: GoogleFonts.inter(
                                color: AppColors.backgroundWhite,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
