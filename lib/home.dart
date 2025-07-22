import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final double scw = MediaQuery.of(context).size.width;
    final double sch = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color.fromRGBO(255, 251, 241, 1),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFDA6D8F)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipOval(
                    clipBehavior: Clip.hardEdge,
                    child: SizedBox(
                      child: Image.asset(
                        "assets/pfp.jpg",
                        fit: BoxFit.cover,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "EMILY SMITH\n",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "TBR : 130 books\n"
                              "Read : 50 books",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: SizedBox(
                width: 199,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.only(top: 5, right: 26, left: 42),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 44),
                        child: Icon(Icons.home_filled),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 39),
                        child: Text(
                          "HOME",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
              ),
            ),
            Divider(color: Colors.black, thickness: 1, indent: 42, endIndent: 31),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 199,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.only(top: 5, right: 26, left: 42),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 24),
                        child: Icon(Icons.add_circle_rounded),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 14),
                        child: Text(
                          "ADD BOOK",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
              ),
            ),
            Divider(color: Colors.black, thickness: 1, indent: 42, endIndent: 31),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 199,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.only(top: 5, right: 26, left: 42),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 33.5),
                        child: Icon(Icons.book_rounded),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 14),
                        child: Text(
                          "LIBRARY",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
              ),
            ),
            Divider(color: Colors.black, thickness: 1, indent: 42, endIndent: 31),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 199,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.only(top: 5, right: 26, left: 42),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 36),
                        child: Icon(Icons.search_rounded),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 25),
                        child: Text(
                          "SEARCH",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
              ),
            ),
            Divider(color: Colors.black, thickness: 1, indent: 42, endIndent: 31),
            SizedBox(height: 412),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 199,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.only(top: 5, right: 26, left: 42),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 24),
                        child: Icon(Icons.exit_to_app),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 14),
                        child: Text(
                          "LOG OUT",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(255, 251, 241, 1),
      appBar: AppBar(

        backgroundColor: const Color.fromRGBO(255, 251, 241, 1),
        elevation: 0,
        leading: Builder(
          builder: (context) => Padding(
            padding: EdgeInsets.only(left: scw * 0.03),
            child: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset(
                "assets/Menu.png",
                color: Colors.black87,
              ),
              iconSize: scw * 0.05,
              splashRadius: scw * 0.06,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: scw * 0.03),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/search-line (2) 2.png"),
                  iconSize: scw * 0.05,
                  splashRadius: scw * 0.06,
                ),
                IconButton(
                  onPressed: () {},
                  icon: ClipOval(
                    child: Image.asset(
                      "assets/e87b8dffe89700d2a29bed7562c56b6dd1ca3c5f.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  iconSize: scw * 0.05,
                  splashRadius: scw * 0.06,
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left:24),
        children: [
          Text(
            "Currently Reading",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: "Inter",
            ),
          ),
          SizedBox(height: sch * 0.03),
          SizedBox(
            height: 346,
            width: 246,
            child: PageView(
              padEnds: false,
              physics: PageScrollPhysics(),
              controller: PageController(viewportFraction: 0.75),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFC6E9F3),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 54, right: 57, top: 45),
                              child: Image.asset("assets/Group.png", height: 197.86, width: 135),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.14),
                        Padding(
                          padding: EdgeInsets.only(left: 26),
                          child: Text(
                            "Modern Calligraphy",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Gilroy",
                              color: Color(0xFA000000),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 26),
                          child: Text(
                            "June and Lucy",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Gilroy",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFDA6D8F),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 54, right: 57, top: 45),
                              child: Image.asset("assets/Group (1).png", height: 197.86, width: 135),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.14),
                        Padding(
                          padding: EdgeInsets.only(left: 26),
                          child: Text(
                            "Yves Saint Laurent",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFA000000),
                              fontFamily: "Gilroy",
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 26),
                          child: Text(
                            "Suzy Menkes",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Gilroy",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFC6E9F3),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 54, right: 57, top: 45),
                              child: Image.asset("assets/cat.png", height: 198, width: 135),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.14),
                        Padding(
                          padding: EdgeInsets.only(left: 26),
                          child: Text(
                            "Cat Secrets",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFA000000),
                              fontFamily: "Gilroy",
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 26),
                          child: Text(
                            "Jef Czekaj",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Gilroy",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: sch * 0.03),
          Text(
            "Updated Books",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: "Inter",
            ),
          ),
          SizedBox(height: sch * 0.03),
          SizedBox(
            height: 326,
            width: 206,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFC6E9F3),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 54, right: 57, top: 45),
                          child: Image.asset("assets/Group.png", height: 198, width: 135),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.14),
                    Padding(
                      padding: EdgeInsets.only(left: 26),
                      child: Text(
                        "Modern Calligraphy",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFA000000),
                          fontFamily: "Gilroy",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 26),
                      child: Text(
                        "June and Lucy",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gilroy",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: sch * 0.03),
          Text(
            "My Books",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: "Inter",
            ),
          ),
          SizedBox(height: sch * 0.03),
          SizedBox(
            height: 160,
            width: 168,
            child: PageView(
              padEnds: false,
              physics: PageScrollPhysics(),
              controller: PageController(viewportFraction: 0.75),
              children: [
                // Modern Calligraphy card (already done)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFC6E9F3),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12, right: 10, top: 5),
                          child: Image.asset("assets/Group.png", height: 168, width: 90),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Text(
                                "Modern Calligraphy",
                                style: TextStyle(
                                  fontSize: 18.3,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "assets/Gilroy-Bold",
                                  color: Color(0xFA000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 9),
                              child: Text(
                                "June and Lucy",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Gilroy",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

// Yves Saint Laurent card - updated to Row layout
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFDA6D8F),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12, right: 10, top: 5),
                          child: Image.asset("assets/Group (1).png", height: 168, width: 90),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Text(
                                "Yves Saint Laurent",
                                style: TextStyle(
                                  fontSize: 18.3,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Gilroy",
                                  color: Color(0xFA000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 9),
                              child: Text(
                                "Suzy Menkes",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Gilroy",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

// Cat Secrets card - updated to Row layout
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFC6E9F3),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12, right: 10, top: 5),
                          child: Image.asset("assets/cat.png", height: 168, width: 90),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Text(
                                "Cat Secrets",
                                style: TextStyle(
                                  fontSize: 18.3,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Gilroy",
                                  color: Color(0xFA000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 9),
                              child: Text(
                                "Jef Czekaj",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Gilroy",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
