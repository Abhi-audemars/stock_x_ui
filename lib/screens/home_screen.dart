import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_x_ui/screens/product_page.dart';
import 'package:stock_x_ui/utils/category_items.dart';
import 'package:stock_x_ui/utils/custom_text.dart';
import 'package:stock_x_ui/utils/popular_brands_card.dart';
import 'package:stock_x_ui/utils/recommended_card.dart';
import 'package:stock_x_ui/utils/release_calander.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CarouselSlider(
                    items: [
                      Image.asset(
                        'assets/car1.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/car2.png',
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        'assets/car3.png',
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        'assets/car2.png',
                        fit: BoxFit.fill,
                      )
                    ],
                    options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        aspectRatio: 12 / 9,
                        viewportFraction: 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, bottom: 15),
                    child: DotsIndicator(
                      dotsCount: 4,
                      position: _currentIndex,
                      decorator: DotsDecorator(
                        spacing: const EdgeInsets.all(7),
                        color: Colors.white,
                        activeColor: Colors.grey,
                        size: const Size.square(8),
                        activeSize: const Size.square(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Shop by Category',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductPage())),
                  child: SizedBox(
                    height: 160,
                    // width: 130,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      itemExtent: 130,
                      children: const [
                        CategoryItems(
                            imagePath: 'assets/2222.png', text: 'Sneakers'),
                        CategoryItems(imagePath: 'assets/sho.png', text: 'Shoes'),
                        CategoryItems(imagePath: 'assets/t.png', text: 'Apparel'),
                        CategoryItems(
                            imagePath: 'assets/ps1.png', text: 'Electronics'),
                        CategoryItems(
                            imagePath: 'assets/card.png', text: 'Trading Cards'),
                        CategoryItems(
                            imagePath: 'assets/tha.png', text: 'Collectibles'),
                        CategoryItems(
                            imagePath: 'assets/pur.png', text: 'Accessories')
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Recommended For You',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 260,
                child: ListView(
                  // itemExtent: 200,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    RecommendedCard(
                      imageUrl: 'assets/nike1.jpeg',
                      name: 'Nike Dunk Low Photon Dust(Womens Sneakers)',
                      askPrice: '94',
                      lastSaleP: 'Last Sale: €122',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/nike2.jpeg',
                      name: 'Nike Dunk Low Triple Pink(Womens Sneakers)',
                      askPrice: '85',
                      lastSaleP: 'Last Sale: €135',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/nike3.jpeg',
                      name: 'Nike Dunk Low Cacao Wow(Womens Sneakers)',
                      askPrice: '121',
                      lastSaleP: 'Last Sale: €138',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/nike4.jpeg',
                      name: 'Nike Dunk Low Chicago Split',
                      askPrice: '115',
                      lastSaleP: 'Last Sale: €89',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/nike5.jpeg',
                      name: 'Nike Dunk Low Grey Frog',
                      askPrice: '130',
                      lastSaleP: 'Last Sale: €150',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/nike6.jpeg',
                      name: 'Nike Dunk Low Light Orewood Brown Sashiko',
                      askPrice: '93',
                      lastSaleP: 'Last Sale: €136',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/nike7.jpeg',
                      name: 'Nike Air Force 1 Low 07 White',
                      askPrice: '75',
                      lastSaleP: 'Last Sale: €69',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: CText(text: 'Popular Brands'),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 168,
                  children: const [
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-PnbA0hUTvGv8ocNkgLQWgdPnjBAKRAta2FCQz7ZJsxQ-YsfwL3VTFfXG0aa8A7rgE_I',
                      brandName: 'Jordan',
                      brandLogo:
                          'https://e7.pngegg.com/pngimages/86/405/png-clipart-jordan-logo-jumpman-nike-icons-logos-emojis-iconic-brands-thumbnail.png',
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQADd7speLUKpKeyxvTULXxK3-olxcurlvydw',
                      brandName: 'Supreme',
                      brandLogo:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwU1Y2bGUIYLf2G2V_yrDKjFPx6fhbhSUxYQ',
                      iHeight: 20,
                      iWidth: 24,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5HBqPrz8t1-bELv_cypIt4W0FYMg2LNpgw5jTnDQIFOUvHO7SFQFZq4NE20UxQ8jIqwg',
                      brandName: 'Louis Vuitton',
                      brandLogo:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWOQmcCrIU7-u3iH2Txk0fiMuvRq2SHeUwLg',
                      iHeight: 24,
                      iWidth: 28,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr_PD2FFmKWB8gncUfEaFZviocXwf57Ym5Mw',
                      brandName: 'Bearbrick',
                      brandLogo:
                          'https://www.otaquest.com/wp-content/uploads/2020/11/bearbrick-1024x503.jpg',
                      iHeight: 26,
                      iWidth: 35,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEtzyjvqH0xS7aqTmvBsyPKiV70s4h_Ahdxw',
                      brandName: 'PS5',
                      brandLogo:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeGj-ndHQawkBSBU2swT6EeShSf92PaA_9xQLQSLqgB3Jb8PPuSnJI09ktxKqFm_np7AU',
                      iHeight: 30,
                      iWidth: 42,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: CText(text: 'Most Popular Sneakers'),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 260,
                child: ListView(
                  // itemExtent: 200,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    RecommendedCard(
                      imageUrl: 'assets/nike1.jpeg',
                      name: 'Nike Dunk Low Photon Dust(Womens Sneakers)',
                      askPrice: '94',
                      lastSaleP: '122334 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/nike2.jpeg',
                      name: 'Nike Dunk Low Triple Pink(Womens Sneakers)',
                      askPrice: '85',
                      lastSaleP: '132345 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/nike3.jpeg',
                      name: 'Nike Dunk Low Cacao Wow(Womens Sneakers)',
                      askPrice: '121',
                      lastSaleP: '138111 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/nike4.jpeg',
                      name: 'Nike Dunk Low Chicago Split',
                      askPrice: '115',
                      lastSaleP: '8449 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/nike5.jpeg',
                      name: 'Nike Dunk Low Grey Frog',
                      askPrice: '130',
                      lastSaleP: '15440 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/nike6.jpeg',
                      name: 'Nike Dunk Low Light Orewood Brown Sashiko',
                      askPrice: '93',
                      lastSaleP: '134446 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/nike7.jpeg',
                      name: 'Nike Air Force 1 Low 07 White',
                      askPrice: '75',
                      lastSaleP: '6339 Sold',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: CText(text: 'Most Popular Brands'),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 168,
                  children: const [
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWXO1jC9de5Vc-Vksfh10Z3VVfKUVijJJV3A',
                      brandName: 'New Balance',
                      brandLogo:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJEWRWptYZYnQUVqsQBJ-MHN0tBNaBvk-gqA',
                      iHeight: 20,
                      iWidth: 24,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPP5letp-8ItRXn7RCN12nN3bjh3RsTiN8TA',
                      brandName: 'Nike',
                      brandLogo:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCvGWrlIIwS5UXdwPjyl3c6yI9jNfrE4SzBw',
                      iHeight: 20,
                      iWidth: 20,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM2V2Yh7MjI3EI_tWKOHn7bOG1VhjIOQUpdA',
                      brandName: 'Crocs',
                      brandLogo:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEflfvWJ8R0YCeXv3A9VSS0a9NUBQ2v4qyKve4fFqEJ-1KjdW_9DFpQGRhz5VKHixIP5Y',
                      iHeight: 20,
                      iWidth: 22,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhoT50gwxd4S8cvWF8_F-czzzWhMZC1s3N6mtoN2dLlUSqWnRKbymm2ILNSiGffF-XyA',
                      brandName: 'Adidas',
                      brandLogo:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRLEfG0HVXPXpl8Hp1md44dK2R4fRWR_TTmw',
                      iHeight: 20,
                      iWidth: 15,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5W9lGiwumc-0IycfUUzMO2oOxgV-kXTdyKw',
                      brandName: 'Jordan',
                      brandLogo:
                          'https://e7.pngegg.com/pngimages/86/405/png-clipart-jordan-logo-jumpman-nike-icons-logos-emojis-iconic-brands-thumbnail.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CText(text: 'Trending Apparel'),
                    CText(
                      text: 'See All',
                      color: Colors.green[900],
                      fontSize: 16,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 260,
                child: ListView(
                  // itemExtent: 200,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    RecommendedCard(
                      imageUrl: 'assets/hoo1.jpeg',
                      name: 'Fear of God Essentials Hoodie Black',
                      askPrice: '94',
                      lastSaleP: '122334 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/hoo2.jpeg',
                      name: 'Nike TechFleece Full Zip Hoodie Black',
                      askPrice: '85',
                      lastSaleP: '132345 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/hoo3.jpeg',
                      name: 'Sp5der P*NK Hoodie Black',
                      askPrice: '121',
                      lastSaleP: '138111 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/hoo4.jpeg',
                      name: 'Fear of God Essentials Hoodie Grey',
                      askPrice: '115',
                      lastSaleP: '8449 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/hoo5.jpeg',
                      name: 'Fear of God Essentials Hoodie Black',
                      askPrice: '130',
                      lastSaleP: '15440 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/hoo6.jpeg',
                      name: 'Fear of God Essentials Tee Structured Black',
                      askPrice: '93',
                      lastSaleP: '134446 Sold',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CText(text: 'Trending Accessories'),
                    CText(
                      text: 'See All',
                      color: Colors.green[900],
                      fontSize: 16,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 260,
                child: ListView(
                  // itemExtent: 200,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    RecommendedCard(
                      imageUrl: 'assets/om1.jpeg',
                      name:
                          'Swatch x Omega Bioceramic Monnswatch Mission To The Moon',
                      askPrice: '194',
                      lastSaleP: '122334 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/om2.jpeg',
                      name:
                          'Swatch x Omega Bioceramic Monnswatch Mission To The Moon',
                      askPrice: '685',
                      lastSaleP: '132345 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/om3.jpeg',
                      name:
                          'Swatch x Omega Bioceramic Monnswatch Mission To The Moon',
                      askPrice: '921',
                      lastSaleP: '138111 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/lv.jpeg',
                      name: 'LV Irongate T Crossbody Bag',
                      askPrice: '115',
                      lastSaleP: '8449 Sold',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CarouselSlider(
                    items: [
                      Image.asset(
                        'assets/car1.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/car2.png',
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        'assets/car3.png',
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        'assets/car2.png',
                        fit: BoxFit.fill,
                      )
                    ],
                    options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        aspectRatio: 12 / 9,
                        viewportFraction: 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, bottom: 15),
                    child: DotsIndicator(
                      dotsCount: 4,
                      position: _currentIndex,
                      decorator: DotsDecorator(
                        spacing: const EdgeInsets.all(7),
                        color: Colors.white,
                        activeColor: Colors.grey,
                        size: const Size.square(8),
                        activeSize: const Size.square(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CText(text: 'Hot Electronics'),
                    CText(
                      text: 'See All',
                      color: Colors.green[900],
                      fontSize: 16,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 260,
                child: ListView(
                  // itemExtent: 200,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    RecommendedCard(
                      imageUrl: 'assets/pod.jpeg',
                      name: 'Apple Airpods Pro (2nd Gen/2022)',
                      askPrice: '194',
                      lastSaleP: '122334 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/ps5.jpeg',
                      name: 'Sony Play Station5 (US Edition White)',
                      askPrice: '685',
                      lastSaleP: '132345 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/x.jpeg',
                      name: 'Microsoft X Box Series X (US Plug)',
                      askPrice: '921',
                      lastSaleP: '138111 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/v.jpeg',
                      name: "Valve's Steam Deck 512GB",
                      askPrice: '115',
                      lastSaleP: '8449 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/et.jpeg',
                      name: "Meta Oculus Quest 2 128GB",
                      askPrice: '115',
                      lastSaleP: '8449 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/pod.jpeg',
                      name: 'Apple Airpods Pro (2nd Gen/2022)',
                      askPrice: '194',
                      lastSaleP: '122334 Sold',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: CText(text: 'Seasonal Favorites'),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 168,
                  children: const [
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIMaqBMtRA-Rqat3bIxGlQpqtVtD1DY2T8nA',
                      brandName: 'T-Shirts',
                      // iHeight: 20,
                      // iWidth: 24,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-QLB_z5hsVDrfrhIwwyVEb-UJp45cLdNSoQ',
                      brandName: "Women's Shoes",
                      brandLogo: '',
                      iHeight: 20,
                      iWidth: 20,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTytQf8Id2m7gnMWZpYZQo16i8GOLNv9Yq5DA',
                      brandName: 'Bags',
                      brandLogo: '',
                      iHeight: 20,
                      iWidth: 22,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDAMcwZXM2TKzn5ZFA639V45HxvUt6CpDPRg',
                      brandName: 'Shorts',
                      brandLogo: '',
                      iHeight: 20,
                      iWidth: 15,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUw1NDb0YzTYGl97PeXeQTAUSyoWn01ROvJg',
                      brandName: 'Sunglasses',
                      brandLogo: '',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CText(text: 'Featured Collectibles'),
                    CText(
                      text: 'See All',
                      color: Colors.green[900],
                      fontSize: 16,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 260,
                child: ListView(
                  // itemExtent: 200,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    RecommendedCard(
                      imageUrl: 'assets/card.png',
                      name: 'Apple Airpods Pro (2nd Gen/2022)',
                      askPrice: '194',
                      lastSaleP: '122334 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/ps5.jpeg',
                      name: 'Sony Play Station5 (US Edition White)',
                      askPrice: '685',
                      lastSaleP: '132345 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/x.jpeg',
                      name: 'Microsoft X Box Series X (US Plug)',
                      askPrice: '921',
                      lastSaleP: '138111 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/v.jpeg',
                      name: "Valve's Steam Deck 512GB",
                      askPrice: '115',
                      lastSaleP: '8449 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/et.jpeg',
                      name: "Meta Oculus Quest 2 128GB",
                      askPrice: '115',
                      lastSaleP: '8449 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/pod.jpeg',
                      name: 'Apple Airpods Pro (2nd Gen/2022)',
                      askPrice: '194',
                      lastSaleP: '122334 Sold',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CText(text: 'Top Trading Cards'),
                    CText(
                      text: 'See All',
                      color: Colors.green[900],
                      fontSize: 16,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 265,
                child: ListView(
                  // itemExtent: 200,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    RecommendedCard(
                      imageUrl: 'assets/tr1.jpeg',
                      name: 'Pokemon TCG Scarlet & Violet Expansion Pack',
                      askPrice: '194',
                      lastSaleP: '122334 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/tr2.jpeg',
                      name: '2023 Pokemon TCG Scarlet & Violet Expansion Pack',
                      askPrice: '685',
                      lastSaleP: '132345 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/tr3.jpeg',
                      name: 'Bandai One Piece Card Game',
                      askPrice: '921',
                      lastSaleP: '138111 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/tr3.jpeg',
                      name: "2019 Pokenom TCG Scarlet",
                      askPrice: '115',
                      lastSaleP: '8449 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/tr3.jpeg',
                      name: "2022 Bowman NPB(Nippon Proof)",
                      askPrice: '115',
                      lastSaleP: '8449 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/tr3.jpeg',
                      name: '2022 Panini Select Football Mega Box',
                      askPrice: '194',
                      lastSaleP: '122334 Sold',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 370,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images-cs.stockx.com/v3/assets/blt818b0c67cf450811/blteedb8a25b17a9dea/64ca92155133ee288cbf151a/QuickTurnaround_TemplatePrimary_Mobile_(1).jpg?quality=75&auto=webp&format=pjpg&dpr=2'),
                          fit: BoxFit.cover)),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CText(
                    text: 'Browse More Brands',
                  )),
              const SizedBox(height: 15),
              SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 168,
                  children: const [
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBqXA8dNyOP7P-waga1dvrMF-e0eNW224vEQ',
                      brandName: 'Pokemon',
                      iHeight: 24,
                      iWidth: 24,
                      brandLogo:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNNH_4Ctgj67okDWlK5OaY2ikm9aFnON_LUyfraNVx2o2B538AZkSn19SXiWCotk9r2dY',
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7WvyGrNCLSGuIup55ieHtGYdBjVCrSja9IHA5sUfpMaSR0qWVUOfExYF4GhPeK2AWwBw',
                      brandName: "LEGO",
                      brandLogo:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhzftNkk3wHNcDGHdQxbF-sPH4IJANgTE-BA',
                      iHeight: 20,
                      iWidth: 20,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEICI0NxNargAczIk7G_466Pj0Zgi7HBnPjw',
                      brandName: 'Apple',
                      brandLogo:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKUw96Y8SAyTz9inO0deLRa8pCLPM0yRWYiA',
                      iHeight: 20,
                      iWidth: 22,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiyO2wBFdBECR4ln7KWevBdC34Z_gpEMYMwP2sZUFVlAG78DHOj_gb1XdH-Cqwfnn6Cis',
                      brandName: 'Gucci',
                      brandLogo:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9ZDTV4RHldbMssGwS6UcqEwokl1CRDY7uBw',
                      iHeight: 20,
                      iWidth: 25,
                    ),
                    PopularBrands(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW5Ke3MPfDbegdtAhx2OKJE_XqiAfTgDRYmw',
                      brandName: 'Off-White',
                      brandLogo:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnSTbDYznBkzv8nqw0wsaQqGYp2SfahLgUAw',
                      iHeight: 24,
                      iWidth: 24,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CText(text: 'Hot Bearbricks'),
                    CText(
                      text: 'See All',
                      color: Colors.green[900],
                      fontSize: 16,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 265,
                child: ListView(
                  // itemExtent: 200,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    RecommendedCard(
                      imageUrl: 'assets/br1.jpeg',
                      name: 'Bearbrick Series 46 Sealed Case 100%',
                      askPrice: '194',
                      lastSaleP: '122334 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/br2.jpeg',
                      name: 'Bearbrick Project Mercury Astronout Pack',
                      askPrice: '685',
                      lastSaleP: '132345 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/br3.jpeg',
                      name: 'Bearbrick Sealed Case 44',
                      askPrice: '921',
                      lastSaleP: '138111 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/br4.jpeg',
                      name: "Bearbrick Garfield 100 &400%",
                      askPrice: '115',
                      lastSaleP: '8449 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/br5.jpeg',
                      name: "Bearbrick Andy Warhol x JEFF",
                      askPrice: '115',
                      lastSaleP: '8449 Sold',
                    ),
                    RecommendedCard(
                      imageUrl: 'assets/br6.jpeg',
                      name: 'Bearbrick Superman',
                      askPrice: '194',
                      lastSaleP: '122334 Sold',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CText(text: 'Release Calander'),
                    CText(
                      text: 'See All',
                      color: Colors.green[900],
                      fontSize: 16,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 265,
                child: ListView(
                  // itemExtent: 200,
                
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ReleaseCalander(
                        imageUrl:
                            'https://images.stockx.com/images/Nike-x-NOCTA-Tech-Fleece-Hoodie-Black.jpg?fit=fill&bg=FFFFFF&w=1200&h=857&fm=jpg&auto=compress&dpr=2&trim=color&updated_at=1690217467&q=75',
                        name: 'Nike x NOCTA Tech Fleece Hoodie Black',
                        date: '27',
                        month: 'Jul'),
                    ReleaseCalander(
                        imageUrl:
                            'https://images.stockx.com/images/Nike-x-NOCTA-Tech-Fleece-Hoodie-Cobalt-Blue-Tint.jpg?fit=fill&bg=FFFFFF&w=1200&h=857&fm=jpg&auto=compress&dpr=2&trim=color&updated_at=1690435404&q=75',
                        name: 'Nike x NOCTA Tech Fleece Hoodie Blue',
                        date: '27',
                        month: 'Jul'),
                    ReleaseCalander(
                        imageUrl:
                            'https://images.stockx.com/images/Kith-x-Marvel-X-Men-Wolverine-Tee-Black-PH.jpg?fit=fill&bg=FFFFFF&w=1200&h=857&fm=jpg&auto=compress&dpr=2&trim=color&updated_at=1690476694&q=75',
                        name: 'Keith x Marvel X-Men Wolverine Tee Black',
                        date: '28',
                        month: 'Jul'),
                    ReleaseCalander(
                        imageUrl:
                            'https://images.stockx.com/360/Nike-Air-Jordan-Air-Ship-PE-SP-Every-Game/Images/Nike-Air-Jordan-Air-Ship-PE-SP-Every-Game/Lv2/img01.jpg?fm=jpg&auto=compress&w=480&dpr=2&updated_at=1684250718&h=320&q=75',
                        name: 'Nike Jordan Air Ship PE SP A Ma Manier ',
                        date: '03',
                        month: 'Aug'),
                    ReleaseCalander(
                        imageUrl:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo_HOUVw-NcpTbRMwsgtfNC6_zPiXP106TEQ',
                        name: 'Nike Air Max 90 White Game Royal',
                        date: '03',
                        month: 'Aug'),
                    ReleaseCalander(
                        imageUrl:
                            'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2023%2F08%2Fmac-miller-vans-authentic-swimming-release-info-001.jpg?cbr=1&q=90',
                        name: 'Vans Authentic Mac Miller Swimming',
                        date: '03',
                        month: 'Aug'),
                    ReleaseCalander(
                        imageUrl:
                            'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2023%2F07%2Foff-white-nike-air-force-1-mid-sheed-black-white-release-date-002.jpg?cbr=1&q=90',
                        name: 'Nike Air Force 1 Mid Off-White Sheed',
                        date: '03',
                        month: 'Aug'),
                    ReleaseCalander(
                        imageUrl:
                            'https://images.stockx.com/360/Nike-SB-Dunk-Low-Orange-Emerald-Rise/Images/Nike-SB-Dunk-Low-Orange-Emerald-Rise/Lv2/img01.jpg?fm=jpg&auto=compress&w=480&dpr=2&updated_at=1690834828&h=320&q=75',
                        name: 'Nike SB Dunk Low Orange Emerald Rise',
                        date: '03',
                        month: 'Aug'),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
