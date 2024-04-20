import 'package:flutter/material.dart';
import 'package:project/screens/order_success_screen.dart';
import 'package:project/screens/payment_method_screen.dart';
import 'package:project/screens/shipping_address_screen.dart';
import 'package:project/widgets/container_button_modal.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Order"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "Shipping Address",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Kelompok 22",
                            style: TextStyle(fontSize: 16),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) => ShippingAdrress(),
                            ));
                            }, 
                            child: Text(
                              "Change",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFFDB3022),
                              ),
                            ),
                          ),
                        ],
                      ),
                       Text(
                        "Jl. Juanda No 15",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "Samarinda, Kalimantan Timur, Indonesia",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment Method",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => PaymentMethodScreen(),
                            ));
                      }, 
                      child: Text(
                        "Change",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFDB3022),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white, 
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ), 
                        ],
                      ),
                      child: Image.asset("images/mastercard.jpg"),
                    ),
                    SizedBox(width: 20),
                    Text("**** **** **** 2901"),
                  ],
                ),
                SizedBox(height: 40),
                Text(
                  "Delivery Method",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white, 
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ), 
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "images/icon3.png", 
                            height: 25,
                          ),
                          Text("1-5 Jam"),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 60,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.white, 
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ), 
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Home Delivery",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.indigo,
                            ),
                          ),
                          Text("1-3 Jam"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub-Total",
                         style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "\Rp78.500",
                         style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Biaya Pengantaran",
                         style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "\Rp2.500",
                         style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 30,
                    color: Colors.black,
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Pembayaran",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\Rp81.000",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderSuccessScreen(),
                          ));
                    },
                    child: ContainerButtonModel(
                      itext: "Konfirmasi Pembelian",
                      containerWidth: MediaQuery.of(context).size.width,
                      bgColor:  Color(0xFFDB3022),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
