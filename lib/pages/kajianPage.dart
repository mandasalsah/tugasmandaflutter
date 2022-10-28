import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class KajianPage extends StatefulWidget {
  const KajianPage({super.key});

  @override
  State<KajianPage> createState() => _KajianPageState();
}

class _KajianPageState extends State<KajianPage> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Ustad Adi Hidayat",
      "favorite": "\Disukai 4000 Orang",
      "images":
          "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/07/08/876774867.jpg",
    },
    {
      "title": "Ustad Syamsuddin Nur Makka",
      "favorite": "\Disukai 3000 Orang",
      "images":
          "https://assets.pikiran-rakyat.com/crop/85x46:688x393/x/photo/2022/03/03/3083478283.jpg",
    },
    {
      "title": "Ustad Tengku Hanan Attaki",
      "favorite": "\Disukai 1000 Orang",
      "images":
          "https://1.bp.blogspot.com/-HxYE662vYyY/XSKrn1Km7dI/AAAAAAACcPc/9lR7W3zPeW0P5Wk12D33pG6o81UkTOR8gCLcBGAs/s1600/Hanan%2BAttaki%2BUHA.jpg",
    },
    {
      "title": "Ustad Handy Boni",
      "favorite": "\Disukai 900 Orang",
      "images":
          "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/09/18/2070338585.png",
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // menunjukkan bahwa container totalnya 45% dari total keseluruhan layar
            height: size.height * .45,
            decoration: BoxDecoration(
                color: Color(0xFFFFD384),
                image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage("assets/bgkajian.png"))),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Align(
                    child: Container(
                      height: 245,
                      width: 245,
                    ),
                  ),
                  Text(
                    "Kajian Dakwah",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 38, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.0,
                        mainAxisSpacing: 12.0,
                        mainAxisExtent: 310,
                      ),
                      itemCount: gridMap.length,
                      itemBuilder: (_, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              16.0,
                            ),
                            color: Color(0xFFFFE57F),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(16.0),
                                  topRight: Radius.circular(16.0),
                                ),
                                child: Image.network(
                                  "${gridMap.elementAt(index)['images']}",
                                  height: 170,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${gridMap.elementAt(index)['title']}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .merge(
                                            const TextStyle(
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "${gridMap.elementAt(index)['favorite']}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .merge(
                                            TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey.shade500,
                                            ),
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.hotel_class,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
