import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge_plants/constants/app_colors.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

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
                itemBuilder: ((context, index) {
                  return Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.asset(
                                  "assets/images/plant${index + 1}.png"),
                            ),
                            const Text("Lucky Jade plant"),
                            const SizedBox(height: 8,),
                            const Row(
                              children: [
                                Text("\$12.99"),
                                Spacer(),
                                Icon(Icons.favorite_border)
                              ],
                            )
                          ],
                        ),
                      ));
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
