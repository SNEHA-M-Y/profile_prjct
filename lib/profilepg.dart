import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profilepg extends StatefulWidget {
  const profilepg({super.key});

  @override
  State<profilepg> createState() => _profilepgState();
}

class _profilepgState extends State<profilepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: BottomWaveClipper(),
                child: Container(
                  child: Image.asset("images/girl.webp"),
                ),
              ),
              Container(
                height: 180,
                decoration: BoxDecoration(
                    color: Color.fromARGB(107, 233, 128, 252),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(290, 100),
                        bottomLeft: Radius.elliptical(150, 100))),
              ),
              Container(
                height: 180,
                decoration: BoxDecoration(
                    color: Color.fromARGB(107, 233, 128, 252),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(150, 100),
                        bottomLeft: Radius.elliptical(290, 100))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150,left: 45),
                child: CircleAvatar(child: CircleAvatar(backgroundImage: AssetImage("images/girl.webp"),radius: 50,),radius: 55,backgroundColor: Colors.white,)),
              
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Column(
                  children: [
                    Text("3057",style: TextStyle(color: Colors.purple[400],fontSize: 18,fontWeight: FontWeight.w700),),
                    Text("Followers",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w500),)
                  ],
                ),
                SizedBox(width: 40,),
                Column(
                  children: [
                    Text("274",style: TextStyle(color: Colors.purple[400],fontSize: 18,fontWeight: FontWeight.w700)),
                    Text("Following",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w500))
                  ],
                ),
                SizedBox(width: 40,),
                Column(
                  children: [
                    Text("57",style: TextStyle(color: Colors.purple[400],fontSize: 18,fontWeight: FontWeight.w700)),
                    Text("Collection",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w500))
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Divider(color: Colors.purple[400],indent: 50,endIndent: 30,),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Icon(Icons.mail_outline,color: Colors.purple[400],),
                SizedBox(width: 10,),
                Text("laukeith94@gmail.com",style: TextStyle(color: Colors.black54,fontSize: 16),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,top: 30),
            child: Row(
              children: [
                Icon(Icons.phone_enabled_outlined,color: Colors.purple[400],),
                SizedBox(width: 10,),
                Text("+82 95 5808 2654",style: TextStyle(color: Colors.black54,fontSize: 16),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,top: 30),
            child: Row(
              children: [
                Icon(Icons.language_outlined,color: Colors.purple[400],),
                SizedBox(width: 10,),
                Text("www.laukeith.com",style: TextStyle(color: Colors.black54,fontSize:16 ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height - 80, size.width / 2, size.height - 40);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
