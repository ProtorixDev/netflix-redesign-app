import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 750),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MovieInfo(),
      ),
    );
  }
}

class MovieInfo extends StatefulWidget {

  @override
  _MovieInfoState createState() => _MovieInfoState();
}

class _MovieInfoState extends State<MovieInfo> {

  List<Color> _colors = [Colors.white38, Colors.transparent];
  List<double> _stops = [0.4, 1.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: [
              Hero(
                  tag: "hero",
                  child: Image.network(
                    "https://netstorage-tuko.akamaized.net/images/85dc0578828e1d01.jpeg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: ScreenUtil().setHeight(300.0),
                  )
              ),
              Container(
                width: double.infinity,
                height: ScreenUtil().setHeight(300.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: _colors,
                    stops: _stops,
                  ),
                ),
              ),

              Positioned(
                  top: 60.0,
                  left: 20.0,
                  child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, color: Colors.black, size: ScreenUtil().setHeight(24.0),))),
              Positioned(
                  top: 50.0,
                  child: Hero(
                      tag: "logo",
                      child: Image.network("https://www.freepnglogos.com/uploads/netflix-logo-history-png-33.png", width: ScreenUtil().setWidth(80.0),))),
              Positioned(
                  top: 60.0,
                  right: 20.0,
                  child: Icon(Icons.favorite_border, color: Colors.black, size: ScreenUtil().setHeight(24.0),)),

              Positioned(
                bottom: -30.0,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(-3,3),
                        blurRadius: 3.0
                      )
                    ]
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(Icons.play_arrow, color: Colors.red, size: ScreenUtil().setHeight(30.0),),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20.0)
            ) + EdgeInsets.only(
              top: ScreenUtil().setHeight(20.0),
              bottom: ScreenUtil().setHeight(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.add, color: Colors.black, size: ScreenUtil().setHeight(26.0),),
                Icon(Icons.share_outlined, color: Colors.black, size: ScreenUtil().setHeight(24.0),),
              ],
            ),
          ),

          Text("BLACK PANTHER",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserratAlternates(
            fontSize: ScreenUtil().setSp(18.0),
            color: Colors.black,
            fontWeight: FontWeight.w600
          ),),

          SizedBox(height: ScreenUtil().setHeight(10.0),),

          Text("Action, Adventure",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserratAlternates(
                fontSize: ScreenUtil().setSp(12.0),
                color: Colors.grey,
            ),),

          SizedBox(height: ScreenUtil().setHeight(10.0),),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.redAccent, size: ScreenUtil().setHeight(24.0),),
              Icon(Icons.star, color: Colors.redAccent, size: ScreenUtil().setHeight(24.0),),
              Icon(Icons.star, color: Colors.redAccent, size: ScreenUtil().setHeight(24.0),),
              Icon(Icons.star, color: Colors.redAccent, size: ScreenUtil().setHeight(24.0),),
              Icon(Icons.star, color: Colors.black, size: ScreenUtil().setHeight(24.0),),
            ],
          ),

          SizedBox(height: ScreenUtil().setHeight(20.0),),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Year",
                    style: GoogleFonts.montserratAlternates(
                      fontSize: ScreenUtil().setSp(12.0),
                      color: Colors.grey,
                    ),),
                  Text("2018",
                    style: GoogleFonts.montserratAlternates(
                        fontSize: ScreenUtil().setSp(16.0),
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),),
                ],
              ),
              Column(
                children: [
                  Text("Country",
                    style: GoogleFonts.montserratAlternates(
                      fontSize: ScreenUtil().setSp(12.0),
                      color: Colors.grey,
                    ),),
                  Text("USA",
                    style: GoogleFonts.montserratAlternates(
                        fontSize: ScreenUtil().setSp(16.0),
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),),
                ],
              ),
              Column(
                children: [
                  Text("Length",
                    style: GoogleFonts.montserratAlternates(
                      fontSize: ScreenUtil().setSp(12.0),
                      color: Colors.grey,
                    ),),
                  Text("112 min",
                    style: GoogleFonts.montserratAlternates(
                        fontSize: ScreenUtil().setSp(16.0),
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),),
                ],
              ),
            ],
          ),

          SizedBox(height: ScreenUtil().setHeight(20.0),),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20.0)
            ),
            child: Text("T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserratAlternates(
                fontSize: ScreenUtil().setSp(12.0),
                color: Colors.grey,
              ),),
          ),

          SizedBox(height: ScreenUtil().setHeight(20.0),),

          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20.0)
            ),
            child: Row(
              children: [
                Text("Screenshots",
                  style: GoogleFonts.montserratAlternates(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(16.0),
                      fontWeight: FontWeight.w600
                  ),),
                Spacer(),
                Icon(Icons.arrow_forward, color: Colors.black, size: ScreenUtil().setHeight(20.0),),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(20.0),
              top: ScreenUtil().setHeight(20.0),
            ),
            child: Container(
              height: ScreenUtil().setHeight(100.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: [
                  _screenshots("https://img.mensxp.com/media/content/2017/Dec/header-warner-bros-1513486175_1400x653.jpg"),
                  SizedBox(width: ScreenUtil().setWidth(15.0)),
                  _screenshots("https://www.wikilistia.com/wp-content/uploads/2020/04/avatar-2-hindi-dubbed-hollywood-movie-1-528x297.jpg"),
                  SizedBox(width: ScreenUtil().setWidth(15.0)),
                  _screenshots("https://img.mensxp.com/media/content/2017/Dec/header-warner-bros-1513486175_1400x653.jpg"),
                  SizedBox(width: ScreenUtil().setWidth(15.0)),
                  _screenshots("https://www.wikilistia.com/wp-content/uploads/2020/04/avatar-2-hindi-dubbed-hollywood-movie-1-528x297.jpg"),
                  SizedBox(width: ScreenUtil().setWidth(20.0)),
                ],
              ),
            ),
          ),

        ],
      ),

    );
  }

  _screenshots(String image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.network(
          image,
          fit: BoxFit.cover,
          height: ScreenUtil().setHeight(100.0),
          width: MediaQuery.of(context).size.width * 0.4),
    );
  }

}