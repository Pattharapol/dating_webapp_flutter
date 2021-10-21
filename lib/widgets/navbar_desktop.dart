import 'package:dating_app/helpers/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List _isHovering = [false, false];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 20),
            Image.asset("assets/images/logo.png"),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: screenSize.width / 8),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[0] = true : _isHovering[0] = false;
                      });
                    },
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 12),
                        Text(
                          "Pricing",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: _isHovering[0] ? active : disable,
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          visible: _isHovering[0],
                          maintainSize: true,
                          maintainState: true,
                          maintainAnimation: true,
                          child: Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                                color: active,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 12),
                        Text(
                          "Download",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: _isHovering[1] ? active : disable,
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          visible: _isHovering[1],
                          maintainSize: true,
                          maintainState: true,
                          maintainAnimation: true,
                          child: Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                                color: active,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
