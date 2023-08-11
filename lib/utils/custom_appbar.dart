import 'package:flutter/material.dart';
import 'package:stock_x_ui/utils/bottom_sheet.dart';
import 'package:stock_x_ui/utils/custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 140);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        // title: Text('HAHAHAHA'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.share,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Colors.white),
        ),
        centerTitle: false,
        elevation: 5,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(color: Colors.black, width: 0.1),
                        bottom: BorderSide(color: Colors.black, width: 0.15))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                  child: Column(
                    children: [
                      OutlinedButton(
                        onPressed: ()=>openBottomSheet(context),
                        style: ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(
                            Size(MediaQuery.of(context).size.width, 50),
                          ),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: const BorderSide(
                                    width: 5, color: Colors.black)),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CText(text: 'Size'),
                            Row(
                              children: [
                                CText(text: 'All'),
                                Icon(
                                  Icons.arrow_drop_down_outlined,
                                  color: Colors.black,
                                  size: 25,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.green.shade900,
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    children: [
                                      CText(
                                        text: '£189',
                                        color: Colors.white,
                                      ),
                                      CText(
                                        text: 'Size 6.5',
                                        fontSize: 10,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 1,
                                        color: Colors.green,
                                      ),
                                      const SizedBox(width: 17),
                                      const Column(
                                        children: [
                                          CText(
                                            text: 'Buy',
                                            color: Colors.white,
                                          ),
                                          CText(
                                            text: 'or Bid',
                                            fontSize: 10,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black,
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    children: [
                                      CText(
                                        text: '£189',
                                        color: Colors.white,
                                      ),
                                      CText(
                                        text: 'Size 6.5',
                                        fontSize: 10,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 1,
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(width: 17),
                                      const Column(
                                        children: [
                                          CText(
                                            text: 'Sell',
                                            color: Colors.white,
                                          ),
                                          CText(
                                              text: 'or Ask',
                                              color: Colors.white,
                                              fontSize: 10)
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
