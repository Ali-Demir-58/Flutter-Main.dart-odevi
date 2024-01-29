
import 'dart:async';
import 'package:flutter/material.dart';



void main() {

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  
  late Duration _timeUntilTarget;
  
  final PageController controller = PageController(initialPage: 0);
  
  int currentPage = 0;
  
  late Color dot1 = Color.fromRGBO(29, 78, 216, 1);
  late Color dot2 = Colors.grey;
  late Color dot3 = Colors.grey;
  late Color dot4 = Colors.grey;
  late Color dot5 = Colors.grey;
  
  int sayac = 0;

  

  @override
  void initState() {
    super.initState();

    
    DateTime targetDate = DateTime(2024, 1, 30, 11);

    
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        int nextPage = (controller.page?.round() ?? 0) + 1;
        if (nextPage > 4) {
          nextPage = 0;
        }
        if (sayac == 8) {
          controller.animateToPage(nextPage,
              duration: Duration(milliseconds: 500), curve: Curves.ease);
          sayac = 0;
        }
        sayac++;
        _timeUntilTarget = targetDate.difference(DateTime.now());
      });
    });

    //Hedef ana kalan sürenin hesaplandığı yer
    _timeUntilTarget = targetDate.difference(DateTime.now());

    // Sayfa değiştiği andaki işlemler
    controller.addListener(() {
      setState(() {
        currentPage = controller.page?.round() ?? 0;
        switch (currentPage) {
          case 0:
            dot1 = Color.fromRGBO(29, 78, 216, 1);
            dot2 = Colors.grey;
            dot3 = Colors.grey;
            dot4 = Colors.grey;
            dot5 = Colors.grey;
          case 1:
            dot1 = Colors.grey;
            dot2 = Color.fromRGBO(29, 78, 216, 1);
            dot3 = Colors.grey;
            dot4 = Colors.grey;
            dot5 = Colors.grey;
          case 2:
            dot1 = Colors.grey;
            dot2 = Colors.grey;
            dot3 = Color.fromRGBO(29, 78, 216, 1);
            dot4 = Colors.grey;
            dot5 = Colors.grey;
          case 3:
            dot1 = Colors.grey;
            dot2 = Colors.grey;
            dot3 = Colors.grey;
            dot4 = Color.fromRGBO(29, 78, 216, 1);
            dot5 = Colors.grey;
          case 4:
            dot1 = Colors.grey;
            dot2 = Colors.grey;
            dot3 = Colors.grey;
            dot4 = Colors.grey;
            dot5 = Color.fromRGBO(29, 78, 216, 1);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
  String formattedTime = "${_timeUntilTarget.inDays} DAY ${_timeUntilTarget.inHours % 24} HRS ${_timeUntilTarget.inMinutes % 60} MIN ${_timeUntilTarget.inSeconds % 60} SEC";

    

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
                             SizedBox(width: 15,),
                      Column(
                          children: [  
                            Image.asset('assets/Furniture.png',height: 80,width: 80,),
                            const Text(
                              "Furniture",
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
            
                 Container(
                  width: 360,
                  height: 154,
                  child: PageView(
                    controller: controller,
                    children: <Widget>[
                      Center(
                        child: Image.asset("assets/indirim.png"),
                      ),
                      Center(
                        child: Image.asset("assets/bilgisayar.png"),
                      ),
                      Center(
                        child: Image.asset("assets/takim elbise.png"),
                      ),
                      Center(
                        child: Image.asset("assets/kadin-elbise.png"),
                      ),
                      Center(
                        child: Image.asset("assets/cocuk-elbise.png"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.circle,
                          size: 6,
                          color: dot1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.circle,
                          size: 6,
                          color: dot2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.circle,
                          size: 6,
                          color: dot3,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.circle,
                          size: 6,
                          color: dot4,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.circle,
                          size: 6,
                          color: dot5,
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
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
                              child:  Center(
                                child:Text(
                                  formattedTime,
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
                                         
                                         Container(
                                          height: 150,
                                          width: 150,
                                          
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
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
                                                
                                                child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: '\$75 ',
                                                                    style: TextStyle(
                                                                      color: Colors.black,
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.w600,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '\$90 ',
                                                                    style: TextStyle(
                                                                      color: Colors.grey, // Customize the color as needed
                                                                      fontSize: 10,
                                                                      fontWeight: FontWeight.w500,
                                                                      decoration: TextDecoration.lineThrough,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '20% OFF',
                                                                    style: TextStyle(
                                                                      color: Colors.orange, // Customize the color as needed
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.normal,
                                                                    ),
                                                                  ),
                                                                ],
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
                                      

                                      SizedBox(width: 75,),
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
                                                    
                                                    child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: '\$75 ',
                                                                    style: TextStyle(
                                                                      color: Colors.black,
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.w600,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '\$90 ',
                                                                    style: TextStyle(
                                                                      color: Colors.grey, // Customize the color as needed
                                                                      fontSize: 10,
                                                                      fontWeight: FontWeight.w500,
                                                                      decoration: TextDecoration.lineThrough,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '20% OFF',
                                                                    style: TextStyle(
                                                                      color: Colors.orange, // Customize the color as needed
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.normal,
                                                                    ),
                                                                  ),
                                                                ],
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
                                    

                                    
                                      SizedBox(width: 40,),
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
                                                        "Nike Sky blue & white Sneakers",
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
                                                    
                                                    child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: '\$75 ',
                                                                    style: TextStyle(
                                                                      color: Colors.black,
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.w600,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '\$90 ',
                                                                    style: TextStyle(
                                                                      color: Colors.grey, // Customize the color as needed
                                                                      fontSize: 10,
                                                                      fontWeight: FontWeight.w500,
                                                                      decoration: TextDecoration.lineThrough,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '20% OFF',
                                                                    style: TextStyle(
                                                                      color: Colors.orange, // Customize the color as needed
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.normal,
                                                                    ),
                                                                  ),
                                                                ],
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
                                                            "4.0(124)",
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
                                                        
                                                        child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: '\$75 ',
                                                                    style: TextStyle(
                                                                      color: Colors.black,
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.w600,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '\$90 ',
                                                                    style: TextStyle(
                                                                      color: Colors.grey, // Customize the color as needed
                                                                      fontSize: 10,
                                                                      fontWeight: FontWeight.w500,
                                                                      decoration: TextDecoration.lineThrough,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '20% OFF',
                                                                    style: TextStyle(
                                                                      color: Colors.orange, // Customize the color as needed
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.normal,
                                                                    ),
                                                                  ),
                                                                ],
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
                                                            
                                                            child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: '\$75 ',
                                                                    style: TextStyle(
                                                                      color: Colors.black,
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.w600,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '\$90 ',
                                                                    style: TextStyle(
                                                                      color: Colors.grey, // Customize the color as needed
                                                                      fontSize: 10,
                                                                      fontWeight: FontWeight.w500,
                                                                      decoration: TextDecoration.lineThrough,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '20% OFF',
                                                                    style: TextStyle(
                                                                      color: Colors.orange, // Customize the color as needed
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.normal,
                                                                    ),
                                                                  ),
                                                                ],
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
                                            
                                  
                                            
                                              SizedBox(width: 40,),
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
                                                                "H&M half regular fit cotton shirt",
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
                                                            
                                                            child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: '\$75 ',
                                                                    style: TextStyle(
                                                                      color: Colors.black,
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.w600,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '\$90 ',
                                                                    style: TextStyle(
                                                                      color: Colors.grey, // Customize the color as needed
                                                                      fontSize: 10,
                                                                      fontWeight: FontWeight.w500,
                                                                      decoration: TextDecoration.lineThrough,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '20% OFF',
                                                                    style: TextStyle(
                                                                      color: Colors.orange, // Customize the color as needed
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.normal,
                                                                    ),
                                                                  ),
                                                                ],
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
                                                                    "4.0 (254)",
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
      
        drawer: Drawer(
          child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
               //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text(
                  "Ali Demir",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("alidemir200258@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: Padding(
                  padding: EdgeInsets.only(bottom:9.0),
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 242, 254, 13),
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ), //Text
                  ),
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
               
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                
              },
            ),
          ],
        ),
        ),
      ),
    );
  }
}