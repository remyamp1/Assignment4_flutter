import 'package:assignment_4/Database.dart';
import 'package:flutter/material.dart';
class Design extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delivery",style: TextStyle(color: Colors.black),),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Bacangan, Sambit",style: TextStyle(color: Colors.black),),
                Icon(Icons.arrow_downward),
                Spacer(),
                CircleAvatar(radius: 30,
                foregroundImage: AssetImage("assets/images/photo1.jpeg"),
                ),
                
          ],
            ),
          
    SizedBox(height: 10,),
    Container(
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          Icon(Icons.search),
          Text("What would you like to eat?")
        ],
      ),
      
    ),
    SizedBox(height: 10,),
    Text("Choose Category",style: TextStyle(fontSize: 20),),

    SizedBox(height: 10),
    SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: Row(
      children: 
        List.generate(6, (index){
          return Row(
            children: [
              CircleAvatar(
                radius: 40,
                foregroundImage: AssetImage(Database.Mylist[index]["image"]),
                
          
              ),
        
              ],
          );
          }
    ),
        
        ),
      

        
   ),
   Row(
   children: [
    Text("Main"),
    Spacer(),
    Text("Appetizer"),
    Spacer(),
    Text("Dirnks"),
    Spacer(),
    Text("Dessert"),
    Spacer(),
    Text("Biryani"),
    Spacer(),
     Text("Burder"),
  ],),
  
       
        SizedBox(height: 30),
        Row(
          children: [
            Text("Main Course",style: TextStyle(fontSize: 20),
            
            ),
            Spacer(),
            Text("See All",style: TextStyle(fontSize: 15,color: Colors.red),),
          ],
        ),
        
        
        SizedBox(height: 10,),
        Expanded(child:
        GridView.builder(itemCount: 4,gridDelegate: 
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,crossAxisSpacing: 2,
        mainAxisSpacing: 2),
         itemBuilder: (context,index){   
          return Container(
            height: 100,
            width: double.infinity,
            
            child: 
       Column(
         children: [
        Stack(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
              color: Database.Mylist1[index][Color]),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(Database.Mylist1[index]["name"]),
              ),
            ),
            Positioned(
              top:90,
              left:400,
              child:  
            CircleAvatar(radius: 110,
              foregroundImage: AssetImage(Database.Mylist1[index]["image"]),
            ),),
          ],
        ),
         ],
       ),
          );
       },
          ), 
         ),
     ],
   ),
     
   
         
      
    ),

    bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,
       items: [
      BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.red,),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.black,),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.badge,color: Colors.black,),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.percent_sharp,color: Colors.black,),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: ""),

    ]),
    );
    
  }
}