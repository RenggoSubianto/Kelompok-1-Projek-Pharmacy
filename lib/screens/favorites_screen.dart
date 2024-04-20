import 'package:flutter/material.dart';
import 'package:project/screens/prduct_screen.dart';

class FavoriteScreen extends StatelessWidget {

  List imageList = [
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

  List descriptions = [
    " Obat antihistamin yang digunakan untuk meredakan gejala alergi, seperti gatal-gatal, bersin, dan hidung tersumbat",
    " Obat antidepresan yang digunakan untuk mengobati gangguan depresi dan kecemasan.",
    " Obat antihistamin yang digunakan untuk meredakan gejala alergi, seperti rinitis alergi dan urtikaria.",
    " Obat yang digunakan untuk mengobati tekanan darah tinggi dan membantu melindungi ginjal dari kerusakan akibat diabetes.",
  ];

  List prices = [
    "\Rp12.500",
    "\Rp23.000",
    "\Rp3.000",
    "\Rp40.000",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black12.withOpacity(0.05),
                      //     blurRadius: 2,
                      //     spreadRadius: 1,
                      //   ),
                      // ],
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                            Icons.search, 
                            color: Color(0xFFDB3022),
                          ),
                          border: InputBorder.none,
                          label: Text(
                            "Find Favorite",
                            style: TextStyle(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Favorites Product", 
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GridView.builder(
                  itemCount: productTitles.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                    // crossAxisSpacing: 40,
                  ), 
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 220,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(),));
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      imageList[index],
                                      width: 180,
                                      fit: BoxFit.cover,
                                      height: 220,
                                    ),
                                  ),
                                 ),
                                Positioned(
                                  right: 10,
                                  top: 10,
                                  child: Container(
                                     height: 30,
                                     width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                     child: Center(
                                       child: Icon(
                                     Icons.favorite,
                                     color: Color(0xFFDB3022),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                             ),
                           ),
                          SizedBox(height: 10),
                          Text(
                            productTitles[index],
                             style: TextStyle(
                               fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                           SizedBox(height: 10),
                          Text(
                            descriptions[index],
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 10),
                           Row(
                            children: [
                              Icon(
                                Icons.star, 
                                color: Colors.amber,
                                 size: 22,
                              ),
                               SizedBox(width: 10),
                              Text(
                                 prices[index],
                                 style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFDB3022),
                                ),
                              ),
                             ],
                          ),
                        ],
                       ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
