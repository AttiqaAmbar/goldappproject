import 'package:flutter/material.dart';

class GoldApp extends StatefulWidget {
  const GoldApp({super.key});

  @override
  State<GoldApp> createState() => _GoldAppState();
}

class _GoldAppState extends State<GoldApp> {
  double totalPrice = 0.0;
  TextEditingController tolaPriceController = TextEditingController();
  TextEditingController tolaQuantityController = TextEditingController();
  TextEditingController mashaQuantityController = TextEditingController();
  TextEditingController rattiQuantityController = TextEditingController();
  TextEditingController pointsQuantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 205, 39),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 183, 157, 218),
        title: const Text(
          'Gold App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          //tola price text form field
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              margin: const EdgeInsets.only(
                  left: 50, right: 50, top: 10, bottom: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5)),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                controller: tolaPriceController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Price of one Tola',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),

            //Tola Quantity textForm field
            Container(
              padding: const EdgeInsets.only(left: 20),
              margin:
              const EdgeInsets.only(left: 50, right: 50, top: 5, bottom: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                controller: tolaQuantityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter Quantity of Gold in Tola',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            //Masha Quantity TextForm field
            Container(
              padding: const EdgeInsets.only(left: 20),
              margin:
              const EdgeInsets.only(left: 50, right: 50, top: 5, bottom: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                controller: mashaQuantityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: 'Enter Quantity of Gold in Masha',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            //Ratti Quantity TextForm field
            Container(
              padding: const EdgeInsets.only(left: 20),
              margin:
              const EdgeInsets.only(left: 50, right: 50, top: 5, bottom: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                controller: rattiQuantityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: 'Enter Quantity of Gold in Ratti',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            //Points Quantity TextForm Field
            Container(
              padding: const EdgeInsets.only(left: 20),
              margin:
              const EdgeInsets.only(left: 50, right: 50, top: 5, bottom: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                controller: pointsQuantityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: 'Enter Quantity of Gold in Points',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Text(
              'Total Price: $totalPrice',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            //Calculate Button
            GestureDetector(
              onTap: () {
                if (tolaPriceController.text == '') {
                  tolaPriceController.text = '0';
                  setState(() {});
                }
                if (tolaQuantityController.text == '') {
                  tolaQuantityController.text = '0';
                  setState(() {});
                }
                if (mashaQuantityController.text == '') {
                  mashaQuantityController.text = '0';
                  setState(() {});
                }
                if (rattiQuantityController.text == '') {
                  rattiQuantityController.text = '0';
                  setState(() {});
                }
                if (pointsQuantityController.text == '') {
                  pointsQuantityController.text = '0';
                  setState(() {});
                }
                double pricePerTola = double.parse(tolaPriceController.text);
                double tolaQuantity = double.parse(tolaQuantityController.text);
                double pricePerMasha = pricePerTola / 12;
                double mashaQuantity =
                double.parse(mashaQuantityController.text);
                double totalPriceMasha = pricePerMasha * mashaQuantity;
                double rattiQuantity =
                double.parse(rattiQuantityController.text);
                double pricePerRatti = pricePerTola / (12 * 8);
                double totalPriceRatti = pricePerRatti * rattiQuantity;
                double pointsQuantity =
                double.parse(pointsQuantityController.text);
                double pricePerPoints = pricePerTola / (12 * 8 * 8);
                double totalPricePoints = pricePerPoints * pointsQuantity;
                totalPrice = (pricePerTola * tolaQuantity) +
                    totalPriceMasha +
                    totalPriceRatti +
                    totalPricePoints;

                // totalPrice = totalPrice + mashaTotalPrice;
                setState(() {});
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 183, 157, 218),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
