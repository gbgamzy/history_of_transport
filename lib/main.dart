import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove debug tag
      debugShowCheckedModeBanner: false,
      title: 'History of Road transport',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
            title: Text("History of transport"),
          ),
      body: Center(
        heightFactor: 1.17,
        child: Container(
          // color: Colors.amber,
          child: CarouselSlider(
              options: CarouselOptions(
                height: 600,
                autoPlay: false,
                enableInfiniteScroll: false,
                viewportFraction: 1,
                initialPage: 0

              ),
              items: [
                Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Material(
                      
                      borderRadius: BorderRadius.circular(24.0),
                      elevation: 5,

                      // ignore: prefer_const_literals_to_create_immutables
                      child: Column(children: [
                        const SizedBox(height:200),
                        const Text("Module 1", style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo
                        )),
                        
                        const SizedBox(height:30),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("History of Road transportation",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                          
                          )),
                        
                      ]),
                    ),
                  ),
                ),
                FlashCard(name: "assets/Picture1.png", text: "The first form of transport was walking! Before humans learnt how to domesticate animals like horses and donkeys, people's only mode of travel was to walk."),
                FlashCard(name: "assets/Picture2.png", text: "Around 4000 BC, humans learnt to domesticate animals and, using them for transport and trade. Capable of travelling longer distances and carrying heavier loads, the use of animals made travel and trade easier and more efficient, leading to trails and tracks in the land. This was the first significant development in the history of transport."),
                FlashCard(name: "assets/Picture3.png", text: "4000 BC - Horses and camels are domesticated and used for transport."),
                FlashCard(name: "assets/Picture4.png", text: "3500 BC - Fixed wheels on carts are invented."),
                
                FlashCard(name: "assets/Picture6.png", text: "2000 BC - First chariots are built."),
                FlashCard(name: "assets/Picture7.png", text: "1662 - First horse-drawn public bus invented."),
                FlashCard(name: "assets/Picture8.png", text: "Indian transport during Colonial era"),
                FlashCard(name: "assets/Picture9.png", text: "1851 - The first steam locomotive in India was a construction engine, employed for bringing in the earthworks, during the construction of the Solani canal near Roorkee in December."),
                FlashCard(name: "assets/Picture10.png", text: "1854- 165 Years Ago India's 1st Passenger Train Took Off In Mumbai, With 400 People In 14 Carriages."),
                FlashCard(name: "assets/Picture11.png", text: "In India first railway was built between Mumbai and Thane in 1852 and the first passenger train ran between the two stations. covering a distance of 34 km, on April 16, 1853."),
                FlashCard(name: "assets/Picture12.png", text: "1856- Pack-bullocks of small size, carrying a load of about 240 pounds, are used for the con veyance of many kinds of goods."),
                FlashCard(name: "assets/Picture14.png", text: "HINDUSTAN AMBASSADOR."),
                FlashCard(name: "assets/Picture15.png", text: "Electric Car."),

                ],

              ),
        ),
      ),
    );
  }
}

class FlashCard extends StatelessWidget {
  String name, text;

  FlashCard({Key? key, required this.name, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Material(
          
          borderRadius: BorderRadius.circular(24.0),
          elevation: 5,

          child: Column(children: [
            SizedBox(height:30),
            Image.asset(name,
            height: 300,
            ),
            SizedBox(height:30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
              
              )),
            
          ]),
        ),
      ),
    );
  }
}
