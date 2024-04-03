import 'package:ecommerce/productCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Color.fromRGBO(246, 239, 238, 1),),label: "Home",backgroundColor: Colors.lightBlueAccent),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outlined,color: Color.fromRGBO(246, 239, 238, 1),),label: "Favourits"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded,color: Color.fromRGBO(246, 239, 238, 1),),label: "Cart",),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Color.fromRGBO(246, 239, 238, 1),),label: "Account" )
      ]),
      backgroundColor: Color.fromRGBO(246, 239, 238, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(246, 239, 238, 1),
        title: Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return GestureDetector(onTap: () {
              Scaffold.of(context).openDrawer(); 
            },
              child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(30, 0, 0, 0),
                          offset: const Offset(
                            0,
                            0,
                          ),
                          blurRadius: 3,
                          spreadRadius: 1,
                        )
                      ],
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.white)),
                  child: Icon(Icons.menu),),
            );
          }
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(30, 0, 0, 0),
                  offset: const Offset(
                    0,
                    0,
                  ),
                  blurRadius: 3,
                  spreadRadius: 1,
                )
              ],
            ),
            child: Icon(
              Icons.shopping_basket_rounded,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(30, 0, 0, 0),
                    offset: const Offset(
                      0,
                      0,
                    ),
                    blurRadius: 3,
                    spreadRadius: 1,
                  )
                ],
                shape: BoxShape.circle,
                color: Colors.yellow,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrLUE91HU82SWr0y4AOgJ4hwozYbJqfsXFViUVmej2lA&s'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: Drawer(child: ListView(padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(curve: Easing.legacy,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [ Colors.purple,
                              const Color.fromARGB(255, 235, 182, 244)])
                
              ),
              child: Text('Catogories',style:TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            ListTile(
        title: const Text('Electronics'),leading: Icon(Icons.phone_android_sharp,color: Colors.purple ,),
        onTap: () {
          
        },
      ),
      ListTile(
        title: const Text('Deals'),leading: Icon(Icons.trending_up,color: Colors.purple ,),
        onTap: () {
         
        },
      ),
      ListTile(
        title: const Text('Cart'),leading: Icon(Icons.shopping_cart,color: Colors.purple ,),
        onTap: () {
         
        },
      ),
      ListTile(
        title: const Text('Saved'),leading: Icon(Icons.push_pin,color: Colors.purple ,),
        onTap: () {
         
        },
      ),
      ListTile(
        title: const Text('Brand Mall'),leading: Icon(Icons.store_mall_directory,color: Colors.purple ,),
        onTap: () {
         
        },
      ),
      ListTile(
        title: const Text('Customer Serviece'),leading: Icon(Icons.person_pin_circle,color: Colors.purple ,),
        onTap: () {
         
        },
      ),
      ListTile(
        title: const Text('Settings'),leading: Icon(Icons.settings,color: Colors.purple ,),
        onTap: () {
         
        },
      ),
        ],
      ),),
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 320,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search...",
                              suffixIcon: Icon(Icons.search),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Icon(
                            Icons.filter_list_rounded,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(colors: [
                              Colors.purple,
                              const Color.fromARGB(255, 235, 182, 244)
                            ])),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(67, 255, 255, 255),
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 15,
                        bottom: 15,
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(68, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                "Get the special discount",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 9),
                              ),
                              Text(
                                "50 %",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                "OFF",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 34,
                                  fontWeight: FontWeight.w900,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          right: 80,
                          top: 15,
                          child: Transform.flip(
                            flipX: true,
                            child: Container(
                              height: 140,
                              width: 140,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/shoe.png'),
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                  Icon(
                    Icons.more_horiz_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(30, 0, 0, 0),
                                offset: const Offset(
                                  0,
                                  0,
                                ),
                                blurRadius: 3,
                                spreadRadius: 1,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.apps,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "All",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(30, 0, 0, 0),
                                offset: const Offset(
                                  0,
                                  0,
                                ),
                                blurRadius: 3,
                                spreadRadius: 1,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.network(
                              'https://contents.mediadecathlon.com/p1568028/ec5691369e2c0981cd89ba0b9d78f0ae/p1568028.jpg?format=auto&quality=70&f=650x0',
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Footwear",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(30, 0, 0, 0),
                                offset: const Offset(
                                  0,
                                  0,
                                ),
                                blurRadius: 3,
                                spreadRadius: 1,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.network(
                              'https://img0.junaroad.com/uiproducts/18689620/zoom_0-1669009918.jpg',
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Watch",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        Text(
                          "Popular",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 240,
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ProductCard(
                        name: "Nike Shoes",
                        price: "12.50",
                        image:
                            'https://t3.ftcdn.net/jpg/04/36/65/92/360_F_436659277_vp2706cMybOmUSoGNbRDGeGWttlVOqL9.jpg',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ProductCard(
                          name: "Chair",
                          price: "10.00",
                          image:
                              'https://media.istockphoto.com/id/1298089431/vector/white-armchair-with-wooden-legs-realistic-vector-armchair-in-the-loft-style-separate-on-a.jpg?s=612x612&w=0&k=20&c=kOR2f0Ft_j96a-FBGaVDgYLRcmepDnacLsUR6jOh2yk='),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ProductCard(
                          name: "Watches",
                          image:
                              'https://media.istockphoto.com/id/1141683841/vector/gold-watch-isolated-on-white-background-vector-illustration.jpg?s=612x612&w=0&k=20&c=P6ab-8u-D1X5-XMGt2CVeInsr0LfXl4UGOG8fXLKNzM=',
                          price: "20.00"),
                      SizedBox(
                        width: 20,
                      ),
                      ProductCard(
                          name: "Laptops",
                          image:
                              'https://www.dell.com/wp-uploads/2024/01/XPS-9640-laptops-back-to-back-1280x800-1-640x400.jpg',
                          price: "1,599")
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
