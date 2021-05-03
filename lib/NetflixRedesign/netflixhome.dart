import 'package:flutter/material.dart';
import 'package:flutter_netflix_redesign_app/NetflixRedesign/movieinfo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

final List<String> imgList = [
  'https://mediavideo.blastingnews.com/p/4/2019/04/12/7c57b3d1-7aba-4686-bb1c-239fffd666fc.jpg',
  'https://img.mensxp.com/media/content/2017/Dec/header-warner-bros-1513486175_1400x653.jpg',
  'https://sofy.tv/blog/wp-content/uploads/2017/12/upcoming-hollywood-movies-you-shouldnt-miss-1400x653-1505901970_1100x513.jpg',
  'https://st1.bollywoodlife.com/wp-content/uploads/2018/10/37.jpg',
  'https://www.wikilistia.com/wp-content/uploads/2020/04/avatar-2-hindi-dubbed-hollywood-movie-1-528x297.jpg',
  'https://netstorage-tuko.akamaized.net/images/85dc0578828e1d01.jpeg'
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 750),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NetFlixHome(),
      ),
    );
  }
}

class NetFlixHome extends StatefulWidget {

  @override
  _NetFlixHomeState createState() => _NetFlixHomeState();
}

class _NetFlixHomeState extends State<NetFlixHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20.0)
            ) + EdgeInsets.only(
              top: ScreenUtil().setHeight(50.0),
              bottom: ScreenUtil().setHeight(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, color: Colors.black, size: ScreenUtil().setHeight(24.0),),
                Hero(
                    tag: "logo",
                    child: Image.network("https://www.freepnglogos.com/uploads/netflix-logo-history-png-33.png", width: ScreenUtil().setWidth(80.0),)),
                Icon(Icons.search, color: Colors.black, size: ScreenUtil().setHeight(24.0),),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                slider(),

                SizedBox(height: ScreenUtil().setHeight(20.0),),

                Padding(
                  padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(20.0),
                    top: ScreenUtil().setHeight(20.0),
                    bottom: ScreenUtil().setHeight(40.0),
                  ),
                  child: Container(
                    height: ScreenUtil().setHeight(80.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: [
                        _chips("DISCOVER"),
                        SizedBox(width: ScreenUtil().setWidth(15.0)),
                        _chips("CATEGORIES"),
                        SizedBox(width: ScreenUtil().setWidth(15.0)),
                        _chips("ACTION"),
                        SizedBox(width: ScreenUtil().setWidth(15.0)),
                        _chips("COMICS"),
                        SizedBox(width: ScreenUtil().setWidth(20.0)),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(20.0)
                  ),
                  child: Row(
                    children: [
                      Text("My List",
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
                    bottom: ScreenUtil().setHeight(40.0),
                  ),
                  child: Container(
                    height: ScreenUtil().setHeight(170.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MovieInfo()),
                            );
                          },
                          child: Hero(
                            tag: "hero",
                            child: _myList("https://netstorage-tuko.akamaized.net/images/85dc0578828e1d01.jpeg"),
                          ),
                        ),

                        SizedBox(width: ScreenUtil().setWidth(15.0)),
                        _myList("https://sofy.tv/blog/wp-content/uploads/2017/12/upcoming-hollywood-movies-you-shouldnt-miss-1400x653-1505901970_1100x513.jpg"),
                        SizedBox(width: ScreenUtil().setWidth(15.0)),
                        _myList("https://st1.bollywoodlife.com/wp-content/uploads/2018/10/37.jpg"),
                        SizedBox(width: ScreenUtil().setWidth(15.0)),
                        _myList("https://sofy.tv/blog/wp-content/uploads/2017/12/upcoming-hollywood-movies-you-shouldnt-miss-1400x653-1505901970_1100x513.jpg"),
                        SizedBox(width: ScreenUtil().setWidth(20.0)),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(20.0)
                  ),
                  child: Row(
                    children: [
                      Text("Popular on Netflix",
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
                    bottom: ScreenUtil().setHeight(20.0),
                  ),
                  child: Container(
                    height: ScreenUtil().setHeight(170.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: [
                        _myList("https://img.mensxp.com/media/content/2017/Dec/header-warner-bros-1513486175_1400x653.jpg"),
                        SizedBox(width: ScreenUtil().setWidth(15.0)),
                        _myList("https://www.wikilistia.com/wp-content/uploads/2020/04/avatar-2-hindi-dubbed-hollywood-movie-1-528x297.jpg"),
                        SizedBox(width: ScreenUtil().setWidth(15.0)),
                        _myList("https://img.mensxp.com/media/content/2017/Dec/header-warner-bros-1513486175_1400x653.jpg"),
                        SizedBox(width: ScreenUtil().setWidth(15.0)),
                        _myList("https://www.wikilistia.com/wp-content/uploads/2020/04/avatar-2-hindi-dubbed-hollywood-movie-1-528x297.jpg"),
                        SizedBox(width: ScreenUtil().setWidth(20.0)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),



        ],
      ),

    );
  }



  _chips(String chipName) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            "https://st1.bollywoodlife.com/wp-content/uploads/2018/10/37.jpg",
            fit: BoxFit.cover,
            height: ScreenUtil().setHeight(80.0),
            width: MediaQuery.of(context).size.width * 0.5,
          ),
        ),
        Positioned(
          child: Opacity(
            opacity: 0.7,
            child: Container(
              height: ScreenUtil().setHeight(80.0),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
        Text(chipName,
          style: GoogleFonts.montserratAlternates(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: ScreenUtil().setSp(14.0)
          ),),
      ],
    );
  }

  _myList(String image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.network(
        image,
        fit: BoxFit.cover,
        height: ScreenUtil().setHeight(170.0),
        width: MediaQuery.of(context).size.width * 0.35),
    );
  }
}

final List<Widget> imageSliders = imgList.map((item) => Container(
  child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      child: Image.network(item, fit: BoxFit.cover, width: double.infinity, height: ScreenUtil().setHeight(200.0),)
  ),
)).toList();


  Widget slider() {
    return CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSliders,
    );
  }