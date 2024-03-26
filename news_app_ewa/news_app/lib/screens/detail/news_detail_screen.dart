import 'package:flutter/material.dart';
import 'package:news_app/data/get_data_model.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({super.key, required this.article});
  final Article article;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffFF3A44),
        shape: const CircleBorder(),
        onPressed: () {},
        child: Image.asset('assets/favoriteIcon2.png'),
      ),
      body: Stack(
        children: [
          Opacity(
              opacity: 0.9,
              child: Image.network(
                widget.article.urlToImage!,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              )),
          Positioned(
            top: 70,
            left: 15,
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  color: const Color.fromRGBO(245, 245, 245, 0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xff173418),
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.9,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text('${widget.article.content}',
                          style: const TextStyle(
                            fontFamily: 'NunitoSans',
                            color: Color(0xff2E0505),
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  )

                  // SingleChildScrollView(
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(15),
                  //     child: Column(
                  //       children: [
                  //         const SizedBox(
                  //           height: 100,
                  //         ),
                  //         RichText(
                  //           text: const TextSpan(
                  //             children: <TextSpan>[
                  //               TextSpan(
                  //                   text: 'LONDON —',
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w900,
                  //                       fontSize: 14,
                  //                       color: Color(0xff2E0505))),
                  //               TextSpan(
                  //                   text:
                  //                       ' Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.',
                  //                   style: TextStyle(
                  //                     color: Color(0xff2E0505),
                  //                     fontWeight: FontWeight.w600,
                  //                     fontFamily: 'NunitoSans',
                  //                   )),
                  //             ],
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           height: 20,
                  //         ),
                  //         const Text(
                  //             'Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward \$20,000, only to sink as low as \$3,122 a year later.',
                  //             style: TextStyle(
                  //               fontFamily: 'NunitoSans',
                  //               color: Color(0xff2E0505),
                  //               fontWeight: FontWeight.w600,
                  //             )),
                  //         const SizedBox(
                  //           height: 20,
                  //         ),
                  //         const Text(
                  //             'Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.',
                  //             style: TextStyle(
                  //               fontFamily: 'NunitoSans',
                  //               color: Color(0xff2E0505),
                  //               fontWeight: FontWeight.w600,
                  //             )),
                  //         const SizedBox(
                  //           height: 20,
                  //         ),
                  //         const Text(
                  //             'I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.',
                  //             style: TextStyle(
                  //               fontFamily: 'NunitoSans',
                  //               color: Color(0xff2E0505),
                  //               fontWeight: FontWeight.w600,
                  //             )),
                  //         const SizedBox(
                  //           height: 20,
                  //         ),
                  //         const Text(
                  //             'Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority.',
                  //             style: TextStyle(
                  //               fontFamily: 'NunitoSans',
                  //               color: Color(0xff2E0505),
                  //               fontWeight: FontWeight.w600,
                  //             )),
                  //         const SizedBox(
                  //           height: 20,
                  //         ),
                  //         const Text(
                  //             '“Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January.',
                  //             style: TextStyle(
                  //               fontFamily: 'NunitoSans',
                  //               color: Color(0xff2E0505),
                  //               fontWeight: FontWeight.w600,
                  //             )),
                  //         const SizedBox(
                  //           height: 20,
                  //         ),
                  //         const Text(
                  //             'If consumers invest in these types of product, they should be prepared to lose all their money.',
                  //             style: TextStyle(
                  //               fontFamily: 'NunitoSans',
                  //               color: Color(0xff2E0505),
                  //               fontWeight: FontWeight.w600,
                  //             )),
                  //         const SizedBox(
                  //           height: 20,
                  //         ),
                  //         const Text(
                  //             'Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.',
                  //             style: TextStyle(
                  //               fontFamily: 'NunitoSans',
                  //               color: Color(0xff2E0505),
                  //               fontWeight: FontWeight.w600,
                  //             )),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  )),
          Center(
            child: Container(
              width: 311,
              height: 166,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  color: const Color.fromRGBO(245, 245, 245, 0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '${widget.article.publishedAt}',
                        style: const TextStyle(
                            fontFamily: 'NunitoSans',
                            color: Color(0xff2E0505),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        '${widget.article.title}',
                        style: const TextStyle(
                            color: Color(0xff2E0505),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        '${widget.article.author}',
                        style: const TextStyle(
                            fontFamily: 'NunitoSans',
                            color: Color(0xff2E0505),
                            fontSize: 10,
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
