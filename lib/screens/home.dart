import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge_plants/constants/app_colors.dart';
import 'package:ui_challenge_plants/screens/product_detail_screen.dart';

class Home extends ConsumerWidget {
  Home({super.key});

  final List<String> height = [
    "20cm  - 30cm",
    "15cm - 20cm",
    "30cm - 40cm",
    "60cm - 70cm",
    "45cm - 55cm",
    "80cm - 90cm"
  ];
  final List<String> temp = [
    "20°C  - 30°C",
    "15°C - 20°C",
    "23°C - 27°C",
    "10°C - 30°C",
    "15°C - 25°C",
    "10°C - 20°C"
  ];
  final List<String> pots = [
    "Concrete",
    "Ceramic",
    "Concrete",
    "Terracotta",
    "Ceramic",
    "Concrete"
  ];
  final List<String> price = [
    "\$15.99",
    "\$13.99",
    "\$39.99",
    "\$12.99",
    "\$18.99",
    "\$47.99"
  ];
  final List<String> plantName = [
    "Lucky Jade Plant",
    "Snake Plant",
    "Peperomia plant",
    "Small plant",
    "Green flourish plant",
    "Branched plant"
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundWhite,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: Text(
          "Search Products",
          style: GoogleFonts.notoSans(),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 6,
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.tune_outlined,
                        color: AppColors.textColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Found 5 Results",
                style: GoogleFonts.notoSans(
                    color: AppColors.textColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30.0,
                    mainAxisSpacing: 30.0,
                    childAspectRatio: 0.56),
                itemCount: 6,
                physics: const BouncingScrollPhysics(),
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductDetailScreen(
                            image: "assets/images/plant${index + 1}.png",
                            height: height[index],
                            potType: pots[index],
                            price: price[index],
                            temp: temp[index],
                            plantName: plantName[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffF9F9F9),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset(
                                    "assets/images/plant${index + 1}.png"),
                              ),
                              Text(
                                plantName[index],
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$12.99",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.favorite_border)
                                ],
                              )
                            ],
                          ),
                        )),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
