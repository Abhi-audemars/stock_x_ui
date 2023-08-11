import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_x_ui/utils/custom_appbar.dart';
import 'package:stock_x_ui/utils/custom_text.dart';
import 'package:stock_x_ui/utils/divider.dart';
import 'package:stock_x_ui/utils/historical.dart';
import 'package:stock_x_ui/utils/recommended_card.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool _isExpanded = false;
  bool _isExpanded2 = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  void _toggleExpand2() {
    setState(() {
      _isExpanded2 = !_isExpanded2;
    });
  }

  bool _isExpanded3 = false;

  void _toggleExpand3() {
    setState(() {
      _isExpanded3 = !_isExpanded3;
    });
  }

  _launchURL() async {
    final url = Uri.parse(
        'https://vermillion-mousse-56b66b.netlify.app/#/'); // Replace with the desired URL
    if (await canLaunchUrl(url)) {
      await launchUrl(url,
          mode: LaunchMode.externalApplication,
          webViewConfiguration: const WebViewConfiguration(enableJavaScript: true));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CText(
                      text: 'JORDAN 1 RETRO LOW OG',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    const CText(
                      text: 'BLACK TOE(2023)',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    // const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.network(
                        'https://images.stockx.com/360/Air-Jordan-1-Retro-Low-OG-Black-Toe/Images/Air-Jordan-1-Retro-Low-OG-Black-Toe/Lv2/img01.jpg?fm=jpg&auto=compress&w=480&dpr=2&updated_at=1689279627&h=320&q=75',
                        width: 300,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 54,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.deepPurple),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Row(
                          children: [
                            Image.network(
                              'https://em-content.zobj.net/thumbs/320/facebook/355/high-voltage_26a1.png',
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(width: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CText(
                                  text: 'This Product is Selling Fast',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                                CText(
                                  text: '1044 Purchases in the past 3 days',
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CText(
                              text: 'Last Sale',
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                            CText(text: '£189', fontWeight: FontWeight.bold),
                            Row(
                              children: [
                                Icon(Icons.arrow_drop_down_sharp,
                                    size: 15, color: Colors.red),
                                CText(
                                  text: '-£18(-14%)',
                                  fontSize: 13,
                                )
                              ],
                            )
                          ],
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(),
                            ),
                            side:
                                MaterialStatePropertyAll(BorderSide(width: 1)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: CText(
                              text: 'View Market Data',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 0.5,
              color: Colors.black,
            ),
            const SizedBox(height: 5),
            InkWell(
              onTap: _toggleExpand,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15).copyWith(top: 10),
                    child: Row(
                      children: [
                        const Icon(Icons.verified_outlined),
                        const SizedBox(width: 8),
                        const CText(
                          text: 'StockX Verified',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: 'Condition:',
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                  text: ' New',
                                  style: GoogleFonts.roboto(
                                      color: Colors.green,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12))
                            ])),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 5),
                              child: _isExpanded
                                  ? const Icon(Icons.arrow_drop_up, size: 25)
                                  : const Icon(
                                      Icons.arrow_drop_down,
                                      size: 25,
                                    ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (_isExpanded)
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 20, bottom: 5),
                      child: Text(
                          'StockX-verified is our own designation and means that we inspect every item, every time.',
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.roboto(fontSize: 13),
                          maxLines: 3),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 0.5,
              color: Colors.black,
            ),
            InkWell(
              onTap: _toggleExpand2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15).copyWith(top: 10),
                    child: Row(
                      children: [
                        const Icon(Icons.policy_outlined),
                        const SizedBox(width: 8),
                        const CText(
                          text: 'Our Promise',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 5),
                          child: _isExpanded2
                              ? const Icon(Icons.arrow_drop_up, size: 25)
                              : const Icon(
                                  Icons.arrow_drop_down,
                                  size: 25,
                                ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (_isExpanded2)
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 20, bottom: 5),
                      child: Text(
                          "We strive to earn and keep your trust. If we make a mistake, we'll put it right. ",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.roboto(fontSize: 13),
                          maxLines: 3),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 0.5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 35,
                color: Colors.black,
                child: const Center(
                  child: CText(
                    text: 'Related Products',
                    color: Colors.white,
                    fontSize: 16,
                  ),
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
            Container(
              height: 0.5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 35,
                color: Colors.black,
                child: const Center(
                  child: CText(
                    text: 'Product Details',
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The Jordan 1 Retro Low Black Toe, dropped on July 29, 2023, and presents a blend of classic and contemporary, It’s a style that carries the proud legacy of its predecessors.The upper of the Jordan 1 Retro Low showcases a striking blend of premium black and white leathers, accented by a vibrant red heel counter. Classic elements, such as the iconic Swoosh and the timeless 'Wings' logo, are in black, tying the whole look together. All this sits atop a clean, white midsole, proving that simplicity can still make a statement.The Jordan 1 Retro Low Black Toe landed on the market on July 29, 2023, at a retail price of £189.",
                        maxLines: _isExpanded3 ? null : 3,
                        // overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            fontSize: 13, color: Colors.black),
                      ),
                      if (!_isExpanded3)
                        GestureDetector(
                          onTap: _toggleExpand3,
                          child: CText(
                            text: 'Read more',
                            color: Colors.green.shade900,
                            fontSize: 15,
                          ),
                        )
                    ],
                  ),
                  if (_isExpanded3)
                    GestureDetector(
                      onTap: _toggleExpand3,
                      child: CText(
                        text: 'Read less',
                        color: Colors.green.shade900,
                        fontSize: 15,
                      ),
                    )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 0.5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 35,
                color: Colors.black,
                child: const Center(
                  child: CText(
                    text: 'Price History',
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
              child: Text(
                'Sign up for free to view all recent price history ',
                maxLines: 2,
                style: GoogleFonts.roboto(
                    fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => _launchURL(),
                  style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      minimumSize:
                          const MaterialStatePropertyAll(Size(100, 50))),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: CText(
                      text: 'SIGN UP',
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _launchURL(),
                  style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                            side:
                                const BorderSide(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      minimumSize:
                          const MaterialStatePropertyAll(Size(100, 50))),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: CText(
                      text: 'LOG IN',
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 80),
            const Divider1(),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 35,
                color: Colors.black,
                child: const Center(
                  child: CText(
                    text: '12 Month Historical',
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Column(
              children: [
                HisotricalData(text: '12 Month High', price: '£189'),
                Divider1(
                  color: Colors.black12,
                ),
                HisotricalData(text: '12 Month Low', price: '£56'),
                Divider1(color: Colors.black12),
                HisotricalData(text: 'Trade Range', price: '£45-£59'),
                Divider1(color: Colors.black12),
                HisotricalData(text: 'Volatility', price: '11.6%'),
                Divider1(color: Colors.black12),
                HisotricalData(text: 'Number of Sales', price: '154'),
                Divider1(color: Colors.black12),
                HisotricalData(text: 'Average Sale Price', price: '£59'),
                Divider1(color: Colors.black12),
                HisotricalData(text: 'Price Premium', price: '-32%'),
              ],
            ),
            const SizedBox(height: 10),
            const Divider1(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                color: const Color.fromARGB(194, 11, 11, 11),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 17, left: 20),
                      child: Icon(
                        Icons.verified_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CText(
                              text: 'StockX Verified',
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(height: 5),
                            Text(
                                'StockX-verified is our own designation and means that we inspect every item, every time.',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                    fontSize: 14, color: Colors.white),
                                maxLines: 3),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 110,
                color: const Color.fromARGB(194, 11, 11, 11),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 17, left: 20),
                      child: Icon(
                        Icons.policy_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CText(
                              text: 'Our Promise',
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(height: 5),
                            Text(
                                "We strive to earn and keep your trust. If we make a mistake, we'll put it right. ",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                    fontSize: 14, color: Colors.white),
                                maxLines: 3),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                color: const Color.fromARGB(194, 11, 11, 11),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 17, left: 20),
                      child: Icon(
                        Icons.subscriptions_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CText(
                              text: 'Start Selling ASAP',
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(height: 5),
                            Text(
                                'You can start selling on StockX in just few clicks, no application process is neccessary. ',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                    fontSize: 14, color: Colors.white),
                                maxLines: 3),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
