import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Icon(Icons.location_on_outlined),
                    SizedBox(width: 5,),
                    Text("Home",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 20),),
                    SizedBox(width: 3,),
                    Icon(Icons.arrow_drop_down),
                    
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Inner Circle, Connaught Place,New Delhi,Del...",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500),)
              ],
            ),
            SizedBox(width: 30,),
            IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 30,))
          ],
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 9,),
                  Container(
                    child:
                    Image.asset("assets/images/Group 53189.png"),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 210,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          height: 50,
                                          child: Image.asset("assets/images/Renovation.png",)),
                                      SizedBox(height: 10,),
                                      Text("Renovation",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          height: 50,
                                          child: Image.asset("assets/images/Handyman 2.png",)),
                                      SizedBox(height: 10,),
                                      Text("Handyman",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          height: 50,
                                          child: Image.asset("assets/images/Moving 1 (1).png",)),
                                      SizedBox(height: 10,),
                                      Text("Home shifting",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                ),
                              ),
            
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          height: 50,
                                          child: Image.asset("assets/images/Gardening 1.png",)),
                                      SizedBox(height: 10,),
                                      Text("Gardening",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          height: 50,
                                          child: Image.asset("assets/images/Declutter 2 (1).png")),
                                      SizedBox(height: 10,),
                                      Text("Declutter",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          height: 50,
                                          child: Image.asset("assets/images/surface1.png",)),
                                      SizedBox(height: 10,),
                                      Text("Surface",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                ),
                              ),
            
                            ],
                          ),
            
                        ],
                      ),
                    ),
                  ),
                  //6 Container
                  SizedBox(height: 15,),
            
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Text(
                      "Popular Services",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 10,),
            
                  Container(
                    height: 150,
                    child: ListView.builder(
                        itemCount: 7,
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                      return Container(
                        width: 100,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/images/Rectangle 37.png"),
                            SizedBox(height: 10,),
                            Text("Kitchen Cleaning",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black),),
                          ],
                        ),
                      );
                    }),
            
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Text(
                      "Cleaning Services",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 10,),
            
                  Container(
                    height: 150,
                    child: ListView.builder(
                        itemCount: 7,
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return Container(
                            width: 100,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/images/Rectangle 42@2x.png"),
                                SizedBox(height: 10,),
                                Text("Sofa Cleaning ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black),),
                              ],
                            ),
                          );
                        }),
            
                  ),

                  Container(
                    height: 100,
                    child: Row(
                      children: [
                      
                        Image.asset("assets/images/Group 53121.png")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15 ,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        Icon(Icons.pie_chart_outline_outlined),
                        SizedBox(width: 5,),
                        Text("Why Choose Us",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black,fontStyle: FontStyle.normal),),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black12
                      ),child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("assets/images/Group 52754.png"),
                        SizedBox(width: 5,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Quality Assurance",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18,color: Colors.black),),
                            SizedBox(height: 3,),
                            Text("Your satisfaction is guaranteed",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black),)
                          ],
                        )
                      ],
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black12
                      ),child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("assets/images/Group.png"),
                        SizedBox(width: 5,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Fixed Prices",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18,color: Colors.black),),
                            SizedBox(height: 3,),
                            Text("No hidden costs all the prices ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black),)
                          ],
                        )
                      ],
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black12
                      ),child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("assets/images/Group 52756.png"),
                        SizedBox(width: 5,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hassel Free",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18,color: Colors.black),),
                            SizedBox(height: 3,),
                            Text("convenient time saving and secure",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black),)
                          ],
                        )
                      ],
                    ),
                    ),
                  ),

            
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
