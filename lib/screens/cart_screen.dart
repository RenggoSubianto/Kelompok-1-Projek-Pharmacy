import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/payment_method_screen.dart';
import 'package:project/widgets/container_button_modal.dart';

class CartScreen extends StatelessWidget {
  
  List imagesList = [
    "images/cetirizine.png",
    "images/escitalopram.jpg",
    "images/loratadine.jpg",
    "images/losartan.png",
  ];

  List productTitles = [
    "Cetirizine",
    "Escitalopram",
    "Loratadine",
    "Losartan",
  ];

  List prices = [
    "\Rp 12.500",
    "\Rp 23.000",
    "\Rp 3.000",
    "\Rp 40.000",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  child: ListView.builder(
                    itemCount: imagesList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            splashRadius: 20,
                            activeColor: Color(0xFFDB3022),
                            value: true,
                            onChanged: (vaL){},
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imagesList[index],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,  
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTitles[index],
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Obat",
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                prices[index],
                                style: TextStyle(
                                  color: Color(0xFFDC3022),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ), 
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.minus,
                                color: Colors.green,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                CupertinoIcons.plus,
                                color: Color(0xFFDB3022),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pilih Semua",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Checkbox(
                    splashRadius: 20,
                    activeColor: Color(0xFFDB3022),
                    value: false,
                    onChanged: (vaL){},
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 2,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Pembayaran",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "\Rp78.500",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFDB3022),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentMethodScreen(),
                      ));
                },
                child: ContainerButtonModel(
                  itext: "Checkout",
                  containerWidth: MediaQuery.of(context).size.width,
                  bgColor:Color(0xFFDB3022),
                ),
              ),
              SizedBox(height: 20),
            ],
          ), 
        ),
      ),
    );
  }
}
