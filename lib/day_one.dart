import 'package:flutter/material.dart';

class DayOne extends StatefulWidget {
  const DayOne({super.key});

  @override
  State<DayOne> createState() => _DayOneState();
}

class _DayOneState extends State<DayOne> {
  Color favColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Challange One - 1'),
        ),
        backgroundColor: const Color(0xffDDDDDD),
        body: Center(
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Container(
                  width: 420,
                  height: 480,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Stack(children: [
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Positioned(
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(14)),
                                    child: Image.network(
                                        "https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                        width: 380,
                                        height: 240,
                                        fit: BoxFit.cover)))),
                        Positioned(
                            right: 10,
                            top: 25,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    favColor = Colors.red;
                                  });
                                },
                                icon: Icon(Icons.favorite, color: favColor)))
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(
                                        left: 20, top: 14),
                                    child: const Text("Nike Running Shoes",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20))),
                                Container(
                                    margin:
                                        const EdgeInsets.only(left: 20, top: 5),
                                    child: const Text(
                                        "Blue Ribbon's first product which was a soccer \nshoe called Nike.",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500))),
                              ]),
                          const Padding(
                            padding: EdgeInsets.only(right: 30, top: 14),
                            child: Text("\$2500",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff004EEC)),
                          onPressed: () {},
                          child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 14, horizontal: 104),
                              child: Text("Add To Cart",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24)))),
                    ],
                  ),
                ))));
    // appBar: AppBar(
    //   title: Text('Challange One'),
    // ),
    // backgroundColor: Color(0xffDDDDDD),
    // body: Center(
    //   child: Container(
    //     height: 500,
    //     width: 400,
    //     child: Stack(
    //       children: [
    //         Container(
    //           height: 500,
    //           width: 400,
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.all(Radius.circular(12)),
    //             boxShadow: [
    //               BoxShadow(
    //                 color: Colors.grey.withOpacity(0.2),
    //                 blurRadius: 8.0,
    //                 spreadRadius: 2.0,
    //                 offset: Offset(
    //                   2.0,
    //                   2.0,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Positioned(
    //           left: 20,
    //           top: 20,
    //           child: ClipRRect(
    //             borderRadius: BorderRadius.only(
    //               topRight: Radius.circular(12),
    //               topLeft: Radius.circular(12),
    //               bottomLeft: Radius.circular(12),
    //               bottomRight: Radius.circular(12),
    //             ),
    //             child: Container(
    //               height: 250,
    //               width: 360,
    //               // color: Colors.black,
    //               decoration: BoxDecoration(
    //                 image: DecorationImage(
    //                     image: NetworkImage(
    //                         "https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    //                     fit: BoxFit.fill),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
  }
}


/*
Container(
                              Text("Nike Running Shoes"),
                              Text(
                                  "Blue Ribbon's first product which was a soccer shoe called Nike."),)
$ 2500
Container(
          height: 500,
          width: 400,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 500,
                // width: 400,
                child: Stack(children: [
                  Positioned(
                      top: 20,
                      left: 20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Container(
                          height: 240,
                          width: 360,
                          child: Image(
                              image: NetworkImage(
                            "https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          )),
                        ),
                      )),
                  Positioned(
                      right: 25,
                      top: 25,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          )))
                ]),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              )
            ],
          ),
        )
*/