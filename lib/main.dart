

import 'package:flutter/material.dart';



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
          title: const Text("Home"),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/notification.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(
                'assets/bag.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {},
            ),
          ],
        ),
        
        
        body: Container(
          
          child: SingleChildScrollView(
              
            child: Column(
              children: [
                const SizedBox(height: 24),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Search Anything...",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          color: Color(0xFFD1D5DB),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          color: Color(0xFF1F2937),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0.11,
                          letterSpacing: 0.07,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'View All ->',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF6B7280),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                          children: [  
                            Image.asset('assets/fashion.png',height: 80,width: 80,),
                            const Text(
                              "Fashion",
                              style: TextStyle(
                              color: Color.fromARGB(198, 54, 54, 55),
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              
                              ),
                              ),]
                            ),
                            SizedBox(width: 15,),
                      Column(
                          children: [  
                            Image.asset('assets/electronic.png',height: 80,width: 80,),
                            const Text(
                              "electronic",
                              style: TextStyle(
                              color: Color.fromARGB(198, 54, 54, 55),
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              
                              ),),]
                            ),
                            SizedBox(width: 15,),
                      Column(
                          children: [  
                            Image.asset('assets/Appliances.png',height: 80,width: 80,),
                            const Text(
                              "Appliances",
                            style: TextStyle(
                              color: Color.fromARGB(198, 54, 54, 55),
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              
                              ),),]
                            ),
                            SizedBox(width: 15,),
                      Column(
                          children: [  
                            Image.asset('assets/Beauty.png',height: 80,width: 80,),
                            const Text(
                              "Beauty",
                              style: TextStyle(
                              color: Color.fromARGB(198, 54, 54, 55),
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              
                              ),),]
                            ),
                            
                      Column(
                          children: [  
                            Image.asset('assets/Furniture.png',height: 80,width: 80,),
                            const Text(
                              "Fu",
                              style: TextStyle(
                              color: Color.fromARGB(198, 54, 54, 55),
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              
                              ),),]
                            ),
                    ],
                  ),
                ),
            
                const SizedBox(height: 25,),
            
                Row(
                  children: [
                    Container(
                          color: const Color.fromARGB(255, 250, 206, 142),
                          width: 231.42,
                          height: 154,
                          alignment: Alignment.center,
                      child: Column(
                        children: [
                             const Text(
                              "MIN 15% OFF",
                                style: TextStyle(
                                color: Color.fromARGB(197, 0, 0, 0),
                                fontSize: 34,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 2.88,
                              ),
                          
                          
                      ),
                            ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:const Color.fromARGB(221, 205, 89, 11),
                              ), 
                              child: const Text(
                                "SHOP NOW",
                                style: TextStyle(
                                color: Color.fromARGB(197, 0, 0, 0),
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 2.88,
                                ),
                              )
                      ),
                      ],
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset("assets/Shoes.png")
                      ],
                    ),
                  ],
                ),
             const SizedBox(height: 15,),
                 Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                Container(
                  width: 6,
                  height: 6,
                  padding:const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 6,
                  height: 6,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black12, // You can change the color as needed
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 6,
                  height: 6,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black12,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 6,
                  height: 6,
                  padding: EdgeInsets.all(15),
                  decoration:const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black12, // You can change the color as needed
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 6,
                  height: 6,
                  padding: EdgeInsets.all(15),
                  decoration:const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black12,
                  ),
                ),
                
              ],
            ),
                const SizedBox(height: 65,),
               
                Container(
                      height: 600,
                      width: 400,
                      color: Color.fromARGB(255, 238, 238, 238),
                      child:  Stack(
                    
                        children: [
                          Positioned(
                            top: 30,
                            left: 10,
                            right: 250,
                            child: Container(
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.red, // Set the background color
                                borderRadius: BorderRadius.circular(2), // Set the border radius
                              ),
                              child: const Center(
                                child:Text(
                                  '11 HRS 15 MIN 04 SEC',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),),
                              ),
                              ),
                          const Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the start (top)
                            children: [
                              Text(
                                'Deal of the day',
                                style: TextStyle(
                                  color: Color(0xFF1F2937),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0.11,
                                  letterSpacing: 0.07,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'View All ->',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF6B7280),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.12,
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            top: 60,
                            left: 10,
                            right: 10,
                            child: Container(
                              height: 500,
                              color: Color.fromARGB(255, 244, 249, 254),
                            child: Column(
                              
                              children: [
                                Padding(padding: EdgeInsets.all(10),),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.all(10)), 
                                    Image.asset("assets/greenshoe.png"),
                                    Padding(padding: EdgeInsets.all(30)),
                                    Image.asset("assets/Sneakers.png"),
                                  ],
                                ),

                                const Row(
                                  children: [
                                    Padding(padding: EdgeInsets.all(20)),
                                    Text("Running Shoes"),
                                    Padding(padding: EdgeInsets.only(left:105,),),
                                    Text("Sneakers"),
                                  ],),

                                Row(
                                    children: [
                                      Padding(padding: EdgeInsets.only(left: 40,)),
                                      Container(
                                        width: 100,
                                        height: 20,
                                        decoration: BoxDecoration(
                                color: Colors.red, // Set the background color
                                borderRadius: BorderRadius.circular(2), // Set the border radius
                              ),
                                        child:const Center(
                                          child: Text(
                                            'Upto 40% OFF',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 90), // Adjust the spacing between the rectangles
                                      Container(
                                        width: 100,
                                        height: 20,
                                        decoration: BoxDecoration(
                                color: Colors.red, // Set the background color
                                borderRadius: BorderRadius.circular(2), // Set the border radius
                              ),
                                        child:const Center(
                                          child: Text(
                                            '40-60% OFF',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                
                                const Padding(padding: EdgeInsets.all(10),),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.all(10)), 
                                    Image.asset("assets/Wrist-Watches.png"),
                                    Padding(padding: EdgeInsets.all(30)),
                                    Image.asset("assets/Bluetooth-Speakers.png"),
                                  ],
                                ),

                                const Row(
                                  children: [
                                    Padding(padding: EdgeInsets.all(20)),
                                    Text("Wrist Watches"),
                                    Padding(padding: EdgeInsets.only(left:100,),),
                                    Text("Bluetooth Speakers"),
                                  ],),

                                Row(
                                    children: [
                                      Padding(padding: EdgeInsets.only(left: 40,)),
                                      Container(
                                        width: 100,
                                        height: 20,
                                        decoration: BoxDecoration(
                                color: Colors.red, // Set the background color
                                borderRadius: BorderRadius.circular(2), // Set the border radius
                              ),
                                        child: Center(
                                          child: Text(
                                            'Upto 40% OFF',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 90), // Adjust the spacing between the rectangles
                                      Container(
                                        width: 100,
                                        height: 20,
                                        decoration: BoxDecoration(
                                color: Colors.red, // Set the background color
                                borderRadius: BorderRadius.circular(2), // Set the border radius
                              ),
                                        child: Center(
                                          child: Text(
                                            '40-60% OFF',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                              ],

                              
                            ),
                          ),
                        ),
                        ],
                      ),
                      
                    ),

                 Container(
                      height: 700,
                      width: 400,
                      color: Color.fromARGB(255, 247, 245, 245),
                      child:  Stack(
                    
                        children: [
                          
                          const Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the start (top)
                            children: [
                              Text(
                                'Hot Selling Footwear',
                                style: TextStyle(
                                  color: Color(0xFF1F2937),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0.11,
                                  letterSpacing: 0.07,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'View All ->',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF6B7280),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.12,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Column(
                                
                                children: [
                                  Padding(padding: EdgeInsets.all(10),),
                                  Row(
                                    children: [
                                      Padding(padding: EdgeInsets.all(10)), 
                                      Image.asset("assets/adidas.png"),
                                      Padding(padding: EdgeInsets.all(30)),
                                      Image.asset("assets/Nike.png"),
                                      Padding(padding: EdgeInsets.all(30)),
                                      Image.asset("assets/Nike-white.png"),
                                    ],
                                  ),
                                  
                                  Row(
                                    children: [
                                         SizedBox(width: 20,),
                                         Container(
                                          height: 150,
                                          width: 150,
                                          
                                          child:const Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.only(bottom: 8),
                                                  child: Text(
                                                    "Adidas white sneakers for men",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              
                                              Padding(
                                                padding: EdgeInsets.only(bottom: 10),
                                                
                                                child: Text(
                                                  "\$68 \$136 50% OFF",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(bottom: 50),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.stars_rounded,
                                                      color: Colors.yellow,
                                                      size: 12,
                                                      ),
                                                      SizedBox(width: 4,),
                                                      Text(
                                                        "4.8 (692)",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.normal,
                                                      ),
                                                    ),
                                                      ],
                                                ),
                                              ),
                                              
                                            ],
                                            
                                          ),
                                          
                                        ),
                                      

                                      SizedBox(width: 55,),
                                       Container(
                                       height: 150,
                                       width: 150,
                                       
                                       child:const Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding: EdgeInsets.only(bottom: 8),
                                                      child: Text(
                                                        "Nike black running shoes for men",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  
                                                  Padding(
                                                    padding: EdgeInsets.only(bottom: 10),
                                                    
                                                    child: Text(
                                                      "\$75 \$90 20% OFF",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.normal,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(bottom: 50),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.stars_rounded,
                                                          color: Colors.yellow,
                                                          size: 12,
                                                          ),
                                                          SizedBox(width: 4,),
                                                          Text(
                                                            "4.2 (412)",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.normal,
                                                          ),
                                                        ),
                                                          ],
                                                    ),
                                                  ),
                                                  
                                                ],
                                                
                                              ),
                                                                         ),
                                    

                                    
                                      SizedBox(width: 50,),
                                       Container(
                                       height: 150,
                                       width: 30,
                                       
                                       child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding: EdgeInsets.only(bottom: 8),
                                                      child: Text(
                                                        "Nik Sn",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  
                                                  Padding(
                                                    padding: EdgeInsets.only(bottom: 10),
                                                    
                                                    child: Text(
                                                      "\$1",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.normal,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(bottom: 50),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.stars_rounded,
                                                          color: Colors.yellow,
                                                          size: 12,
                                                          ),
                                                          SizedBox(width: 4,),
                                                          Text(
                                                            "4.",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.normal,
                                                          ),
                                                        ),
                                                          ],
                                                    ),
                                                  ),
                                                  
                                                ],
                                                
                                              ),
                                                                         ),
                                    
                                    ],
                                    
                                  ),
                                  
                                   
                               
                                     
                                
                        
                                  
                                 
                                ],
                              
                                
                              ),
                            ),

                            
                            
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top:310),
                            child: Container(
                                    height: 30,
                                    width: 350,
                                    child: const  Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                            
                                            Text(
                                              "Recommended for you",
                                              style: TextStyle(
                                                color: Color(0xFF1F2937),
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                height: 0.11,
                                                letterSpacing: 0.07,
                                              ),
                                              ),
                                              Spacer(),
                                              Text(
                                                "View All",
                                                 textAlign: TextAlign.right,
                                                 style: TextStyle(
                                                 color: Color(0xFF6B7280),
                                                 fontSize: 12,
                                                 fontFamily: 'Inter',
                                                 fontWeight: FontWeight.w400,
                                                 height: 0.12,

                                ),
                                ),
                                              
                                        ], 
                                      ),
                                  ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top:360),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Column(
                                children: [
                                  Row(
                                            children: [
                                              Padding(padding: EdgeInsets.all(10)), 
                                              Image.asset("assets/Allen-Solly.png"),
                                              Padding(padding: EdgeInsets.all(30)),
                                              Image.asset("assets/Calvin-Clein.png"),
                                              Padding(padding: EdgeInsets.all(30)),
                                              Image.asset("assets/H&P.png"),
                                            ],
                                          ),
                                          
                                          Row(
                                            children: [
                                                 SizedBox(width: 20,),
                                                 Container(
                                                  height: 160,
                                                  width: 150,
                                                  
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding: EdgeInsets.only(bottom: 8),
                                                          child: Text(
                                                            "Allen Solly Regular fit cotton shirt",
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      
                                                      Padding(
                                                        padding: EdgeInsets.only(bottom: 10),
                                                        
                                                        child: Text(
                                                          "\$35 \$40.25 15% OFF",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.normal,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(bottom: 50),
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              Icons.stars_rounded,
                                                              color: Colors.yellow,
                                                              size: 12,
                                                              ),
                                                              SizedBox(width: 4,),
                                                              Text(
                                                                "4.4 (412)",
                                                              style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.normal,
                                                              ),
                                                            ),
                                                              ],
                                                        ),
                                                      ),
                                                      
                                                    ],
                                                    
                                                  ),
                                                  
                                                ),
                                              
                                  
                                              SizedBox(width: 55,),
                                               Container(
                                               height: 150,
                                               width: 150,
                                               
                                               child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding: EdgeInsets.only(bottom: 8),
                                                              child: Text(
                                                                "Calvin Clein Regular fit slim fit shirt",
                                                                style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 14,
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          
                                                          Padding(
                                                            padding: EdgeInsets.only(bottom: 10),
                                                            
                                                            child: Text(
                                                              "\$52 \$62.4 20% OFF",
                                                              style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.normal,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets.only(bottom: 50),
                                                            child: Row(
                                                              children: [
                                                                Icon(
                                                                  Icons.stars_rounded,
                                                                  color: Colors.yellow,
                                                                  size: 12,
                                                                  ),
                                                                  SizedBox(width: 4,),
                                                                  Text(
                                                                    "4.2 (214)",
                                                                  style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.normal,
                                                                  ),
                                                                ),
                                                                  ],
                                                            ),
                                                          ),
                                                          
                                                        ],
                                                        
                                                      ),
                                                                                 ),
                                            
                                  
                                            
                                              SizedBox(width: 50,),
                                               Container(
                                               height: 150,
                                               width: 30,
                                               
                                               child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding: EdgeInsets.only(bottom: 8),
                                                              child: Text(
                                                                "H& co",
                                                                style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 14,
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          
                                                          Padding(
                                                            padding: EdgeInsets.only(bottom: 10),
                                                            
                                                            child: Text(
                                                              "\$6",
                                                              style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.normal,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets.only(bottom: 50),
                                                            child: Row(
                                                              children: [
                                                                Icon(
                                                                  Icons.stars_rounded,
                                                                  color: Colors.yellow,
                                                                  size: 12,
                                                                  ),
                                                                  SizedBox(width: 4,),
                                                                  Text(
                                                                    "4.",
                                                                  style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.normal,
                                                                  ),
                                                                ),
                                                                  ],
                                                            ),
                                                          ),
                                                          
                                                        ],
                                                        
                                                      ),
                                                                                 ),
                                            
                                            ],
                                            
                                          ),
                                ],
                              ),
                            ),
                          )
                        
                        ],
                      ),
                      
                    ),

              ],
            ),
          ),
        ),

       bottomNavigationBar: BottomAppBar(
    color: Colors.white,
    height: 120,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                  icon: Image.asset('assets/home-2.png'),
                  onPressed: () {
                    // Handle home button press
                  },
                ),
                Text("Home",style: TextStyle(color: Colors.blue),),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Image.asset('assets/element-3.png'),
                  onPressed: () {
                    // Handle search button press
                  },
                ),
                Text("Categories"),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Image.asset('assets/clock.png'),
                  onPressed: () {
                    // Handle orders button press
                  },
                ),
                Text("Orders"),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Image.asset('assets/profile-circle.png'),
                  onPressed: () {
                    // Handle profile button press
                  },
                ),
                Text("Profile"),
              ],
            ),
            // Add more IconButtons as needed
          ],
        ),
         SizedBox(height: 20,),// Adjust spacing between icons and the image
        Column(
          children: [
            Image.asset('assets/line.png', ),
            
          ],
        ),
      ],
    ),), 
      
        drawer: const Drawer(),
      ),
    );
  }
}









