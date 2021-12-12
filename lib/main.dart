import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 5.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 150.0,
              ),
              const Text('Welcome, Ahmed',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF473D3A))),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/model.jpg"),
                            fit: BoxFit.cover))),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
            child: Text(
              'Let\'s select the best taste for your next coffee break!',
              style: TextStyle(
                  fontFamily: 'nunito',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFFB0AAA7)),
            ),
          ),
          const SizedBox(height: 25.0),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Taste of the week',
                    style: TextStyle(
                        fontFamily: 'Karla',
                        fontSize: 17.0,
                        color: Color(0xFF473D3A)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Text(
                    'See all',
                    style: TextStyle(
                        fontFamily: 'Karla',
                        fontSize: 15.0,
                        color: Color(0xFFCEC7C4)),
                  ),
                ),
              ]),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 410.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _listcard(
                  'assets/images/cup.png',
                  'Caffe Misto',
                  'Coffeeshop',
                  'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                  '\$4.99',
                  false,
                ),
                _listcard(
                    'assets/images/cup.png',
                    'Caffe Latte',
                    'BrownHouse',
                    'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                    '\$3.99',
                    false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

_listcard(String imgPath, String cofeName, String shopNam, String desc,
    String price, bool isFavorite) {
  return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: SizedBox(
          height: 300.0,
          width: 225.0,
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: 335.0,
                ),
                Positioned(
                    top: 75.0,
                    child: Container(
                        padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                        height: 260.0,
                        width: 225.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: const Color(0xFFDAB68C),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(
                                height: 60.0,
                              ),
                              Text(
                                shopNam + '\'s',
                                style: const TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(height: 10.0),
                              Text(
                                cofeName,
                                style: const TextStyle(
                                    fontFamily: 'Karla',
                                    fontSize: 32.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(height: 10.0),
                              Text(
                                desc,
                                style: const TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 14.0,
                                    // fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    price,
                                    style: TextStyle(
                                        fontFamily: 'Karla',
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3A4742)),
                                  ),
                                  Container(
                                      height: 40.0,
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: Colors.white),
                                      child: Center(
                                          child: Icon(Icons.favorite,
                                              color: isFavorite
                                                  ? Colors.red
                                                  : Colors.grey,
                                              size: 15.0)))
                                ],
                              )
                            ]))),
                Positioned(
                    left: 40.0,
                    top: 5.0,
                    child: Container(
                        height: 150.0,
                        width: 160.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain))))
              ]),
              SizedBox(height: 20.0),
              InkWell(
                  onTap: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => DetailsPage()));
                  },
                  child: Container(
                      height: 50.0,
                      width: 225.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Color(0xFF473D3A)),
                      child: Center(
                          child: Text('Order Now',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)))))
            ],
          )));
}
