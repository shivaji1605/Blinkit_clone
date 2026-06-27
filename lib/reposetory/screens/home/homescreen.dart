import 'package:flutter/material.dart';
import 'package:blinkit_clone/reposetory/widgets/uihelper.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<Map<String, String>> data = [
    {
      "image": "image 50.png",
      "Text": "Lights, Diyas\n& Candles",
    },
    {
      "image": "image 51.png",
      "Text": "Diwali\nGifts",
    },
    {
      "image": "image 52.png",
      "Text": "Appliances\n& Gadgets",
    },
    {
      "image": "image 53.png",
      "Text": "Home\n& Living",
    },
  ];

  final List<Map<String, String>> category = [
    {
      "image": "image 54.png",
      "Text": "Golden Glass Wooden\nLid Candle (Oudh)",
    },
    {
      "image": "image 57.png",
      "Text": "Royal Gulab Jamun\nBy Bikano",
    },
    {
      "image": "image 63.png",
      "Text": "Bikaji Bhujia",
    },
  ];

  final List<Map<String, String>> groceryKitchen = [
    {
      "img": "image 41.png",
      "text": "Vegetables &\nFruits",
    },
    {
      "img": "image 42.png",
      "text": "Atta, Dal &\nRice",
    },
    {
      "img": "image 43.png",
      "text": "Oil, Ghee &\nMasala",
    },
    {
      "img": "image 44.png",
      "text": "Dairy, Bread &\nMilk",
    },
    {
      "img": "image 45.png",
      "text": "Snacks &\nBranded Foods",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                color: const Color.fromRGBO(236, 5, 5, 1),
                child: Column(
                  children: [
                    const SizedBox(height: 35),

                    Row(
                      children: [
                        const SizedBox(width: 10),
                        UiHelper.customText(
                          text: "Blinkit in",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: "bold",
                        ),
                      ],
                    ),

                    const SizedBox(height: 5),

                    Row(
                                            children: [
                        const SizedBox(width: 10),
                        UiHelper.customText(
                          text: "16 Minutes",
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          fontFamily: "bold",
                        ),
                      ],
                    ),

                    const SizedBox(height: 5),

                    Row(
                      children: [
                        const SizedBox(width: 10),
                        UiHelper.customText(
                          text: "Home",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: "bold",
                        ),
                        UiHelper.customText(
                          text: " - Sujal Dave, Ratanada, Jodhpur (Raj)",
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Positioned(
                right: 25,
                bottom: 80,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.person_2_sharp,
                    color: Colors.black,
                  ),
                ),
              ),

              Positioned(
                bottom: 20,
                left: 20,
                child: UiHelper.customTextField(
                  controller: TextEditingController(),
                  text: "Search Icecream",
                ),
              ),
            ],
          ),

          Container(
            height: 2,
            width: double.infinity,
            color: Colors.white,
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 220,
                    width: double.infinity,
                    color: const Color.fromRGBO(236, 5, 5, 1),
                    child: Column(
                      children: [
                        const SizedBox(height: 12),

                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                          children: [
                            UiHelper.customImage(img: "image 60.png"),
                            UiHelper.customImage(img: "image 55.png"),

                            UiHelper.customText(
                              text: "Mega Diwali Sale",
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "bold",
                            ),

                            UiHelper.customImage(img: "image 61.png"),
                            UiHelper.customImage(img: "image 56.png"),
                          ],
                        ),

                        const SizedBox(height: 15),

                        SizedBox(
                          height: 130,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: data.length,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                width: 95,
                                margin: const EdgeInsets.only(right: 10),
                                                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(
                                      234, 211, 211, 1),
                                  borderRadius:
                                      BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    UiHelper.customText(
                                      text: data[index]["Text"].toString(),
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),

                                    const SizedBox(height: 8),

                                    UiHelper.customImage(
                                      img: data[index]["image"].toString(),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: category.length,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 150,
                          margin: const EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(10),
                                child: UiHelper.customImage(
                                  img: category[index]["image"]
                                      .toString(),
                                ),
                              ),

                              const SizedBox(height: 10),

                              UiHelper.customText(
                                text: category[index]["Text"]
                                    .toString(),
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),

                              const SizedBox(height: 8),

                              Row(
                                children: [
                                  UiHelper.customImage(
                                      img: "timer 4.png"),
                                  const SizedBox(width: 5),
                                  UiHelper.customText(
                                    text: "16 MINS",
                                    color: const Color.fromRGBO(
                                        156, 156, 156, 1),
                                    fontSize: 10,
                                    fontWeight:
                                        FontWeight.w400,
                                  ),
                                ],
                              ),

                              const SizedBox(height: 8),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      UiHelper.customImage(
                                          img: "rupee.png"),
                                      UiHelper.customText(
                                        text: "79",
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ],
                                  ),

                                  
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16),
                    child: Row(
                      children: [
                        UiHelper.customText(
                          text: "Grocery & Kitchen",
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "bold",
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 15),
                                    SizedBox(
                    height: 130,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: groceryKitchen.length,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 90,
                          margin: const EdgeInsets.only(right: 12),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD9EBEB),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: UiHelper.customImage(
                                    img: groceryKitchen[index]["img"]
                                        .toString(),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 8),

                              UiHelper.customText(
                                text: groceryKitchen[index]["text"]
                                    .toString(),
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}