import 'package:ecommerce_app/components/mydrawer.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "About Us:",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: const Color.fromARGB(255, 45, 45, 45),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'lib/images/Aboutus.jpeg',
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Text('We at Nike: ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: const Color.fromARGB(255, 45, 45, 45))),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Nike, Inc. is a globally renowned sportswear and athletic footwear brand. Founded in 1964, the company has become a symbol of innovation and excellence in the world of sports and fitness. Known for its iconic "Just Do It" slogan, Nike is dedicated to inspiring athletes and individuals to reach their full potential. With a commitment to cutting-edge technology and design, Nike offers a wide range of athletic apparel, footwear, and accessories, making it a leading choice for athletes and enthusiasts worldwide.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[900],
                  ),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Made with love ❤️ ~Vaishnavi'),
          )
        ],
      ),
    );
  }
}
