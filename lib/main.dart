import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
            title: Row(
              children: <Widget> [
              Image.asset('assets/logofood.png', width: 110,),
                Expanded(
                  child: 
                  Container(
                  height: 45,
                  margin: EdgeInsets.only(left: 10, top: 30, bottom: 20, right: 3),
                  child: TextField(
                    decoration: 
                    InputDecoration(
                      hintText:'Search', hintStyle: GoogleFonts.notoSansKawi(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.only( top: 14),
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10), // Sesuaikan radius sesuai keinginan Anda
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                )
              ],
            ),
          ),

          body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 25, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Katalog Resep Makanan',
                              style: GoogleFonts.notoSansKawi(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5, right: 18),
                              child: Icon(Icons.settings, color: Colors.redAccent),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                 Container(
                    height: 50,
                    margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemExtent: 115,
                      itemBuilder: (BuildContext context, int index) {
                        Color itemColor = index == 0 ? Colors.redAccent : Colors.white;

      List<String> textkategori = [
        'All',
        'Makanan',
        'Kuah',
        'Minuman',
        'Jus',
      ];

      List<String> imageUrls = [
        'https://w7.pngwing.com/pngs/219/560/png-transparent-computer-icons-desktop-icon-sushi-others-kitchen-food-plate.png',
        'https://e7.pngegg.com/pngimages/743/250/png-clipart-take-out-food-restaurant-computer-icons-drink-drink-food-eating.png',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGMq6S68s-KVxcLTcd4tHM2h4nTUJe0IBGsg&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZup4-05H7-dxDzA5Ip-pAy725nGsH3siHDpVzdrDtqBJk4BNSBn6E8-MkUGymcZGsXZk&usqp=CAU',
        'https://w7.pngwing.com/pngs/679/1010/png-transparent-juice-restaurant-icon-restaurant-concise-style-juice-food-chinese-style-text.png',
      ];
      return Container(
        margin: EdgeInsets.all(4),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: itemColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.redAccent,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageUrls[index],
              width: 10, 
              height: 40, 
              fit: BoxFit.fill, 
            ),
            SizedBox(width: 10), 
            Text(
              textkategori[index],
              style: GoogleFonts.namdhinggo(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                  ),
                
              ),
            ),
          ],
        ),
      );
    },
  ),
),

// GridView 

  Container(
  margin: EdgeInsets.only(left: 20, top: 15, right: 20),
  child: GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 7,
      mainAxisSpacing: 7,
    ),
    itemCount: 5, // Replace with your actual item count
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (BuildContext context, int index) {
      Color itemColor = index == 2 ? Colors.redAccent : Colors.orangeAccent;
      List<String> imageUrls = [
        'https://www.inspiredtaste.net/wp-content/uploads/2022/11/Apple-Pie-Recipe-Video.jpg',
        'https://asset.kompas.com/crops/JFC1_i_OaGvcNEviEw4WKk-r3qQ=/12x51:892x637/750x500/data/photo/2022/03/05/622358ed771fb.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiq0DJL0INdrVAWL6cw_ne_uuBlrXbZhQaNA&usqp=CAU',
        'https://img.okezone.com/content/2023/07/07/298/2842789/resep-chicken-karage-saus-tiram-enak-dan-mudah-dibuatnya-aRRMPjJ38N.jpg',
        'https://asset.kompas.com/crops/it_rFrDqX-g3HsNFV8jL_tIAOwY=/0x0:1000x667/750x500/data/photo/2021/09/08/613812d19a190.jpeg',
      ];

      List<String> textnamaresep = [
        'Apple Pie',
        'Beef Burger',
        'Ramen Udang',
        'Karage',
        'Takoyaki',
      ];

      List<String> textmenit = [
        '90 menit',
        '15 menit',
        '40 menit',
        '100 menit',
        '30 menit',
      ];

       List<String> textinfo = [
        'Makanan',
        'Makanan',
        'Kuah',
        'Makanan',
        'Makanan'
      ]; 
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.black,
            width: 0.3,
          ),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8)
                ),
              child: Image.network(
                imageUrls[index],
                width: 170,
                height: 70, 
                fit: BoxFit.fill,
                
              ),
            ),
            SizedBox(height: 8),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17)),
                  Text(
                    textnamaresep[index],
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                  ),

              ],
            ),
            Column(
              children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10, top: 18),
                          child: Icon(Icons.access_alarm, size: 20)),

                        Container(
                          padding: EdgeInsets.only(left: 3, top: 18),
                          child: Text(
                                textmenit[index],
                                style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 10
                          ),
                          ),
                        ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: itemColor,
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  padding: EdgeInsets.all(6),
                                  margin: EdgeInsets.all(10),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      textinfo[index],
                                      style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 8,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    )
                  ] 
                ) 
              ],
            ),
      );
    },
  ),
),

                ],
              ),
            ),
          ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.redAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
            ),
          ),
      ),
    ); 
  }
}
