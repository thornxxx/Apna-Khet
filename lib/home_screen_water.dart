import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import 'package:myapp/utils.dart';
import 'package:myapp/second_page.dart';
import 'package:myapp/profile_page.dart';

class Scene3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          width: double.infinity,
          child: Container(
            // homescreenFbN (23:2)
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffacb1cf),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupyedegKJ (54DoZ57J2jH3K7NSU9YEDe)
                  padding: EdgeInsets.fromLTRB(
                      13 * fem, 11 * fem, 12 * fem, 13.03 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogrouppgqexnc (54DmrnbjBFKXBwwT86PGqE)
                        margin: EdgeInsets.fromLTRB(
                            12 * fem, 0 * fem, 6 * fem, 22 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [],
                        ),
                      ),
                      Container(
                        // autogroup97qrnh6 (54Dn7N1mqYyz2CN3gK97qr)
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 13.67 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // weather6xg (23:11)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 14 * fem, 0 * fem),
                              width: 220 * fem,
                              height: 149.33 * fem,
                              child: Image.asset(
                                'assets/page-1/images/weather.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // autogroupkqg4144 (54DnFSceN4fCaF4CE6KqG4)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 0.33 * fem),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // profileJor (23:10)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProfilePage()),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        width: 100 * fem,
                                        height: 100 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/profile.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // nameQ6C (23:23)
                                    'Name',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroup88w4v4Y (54DnR71DHJ2PQ8i3KD88W4)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 23 * fem, 0 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // image1Eqv (23:28)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 21 * fem, 0 * fem),
                              width: 140 * fem,
                              height: 129.97 * fem,
                              child: Image.asset(
                                'assets/page-1/images/image-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // cropwheatareadholakpursoilallu (23:29)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 3 * fem, 0 * fem, 0 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 151 * fem,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 18 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Crop:',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff474141),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '  Wheat\n',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff474141),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Area:',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff474141),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '  Dholakpur\n',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff474141),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Soil:',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff474141),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Alluvial\n',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff474141),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Efficiency:',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff474141),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 75%\n',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff474141),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroupfeozaVn (54DnZgbFWZPhWf59QFfEoz)
                  padding: EdgeInsets.fromLTRB(
                      13 * fem, 7 * fem, 13 * fem, 18 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff718bb2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // nexttaskW8Y (23:24)
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: Text(
                          'Next Task:',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Text(
                        // completeyourprofileyXv (23:25)
                        'Complete your profile ',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        14 * fem, 11 * fem, 135 * fem, 11.41 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 69, 103, 139),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 30 * fem, 0 * fem),
                          width: 100 * fem,
                          height: 99.59 * fem,
                          child: Image.asset(
                            'assets/page-1/images/plant.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 39.59 * fem),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                child: Text(
                                  'Plant:',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Text(
                                'No Issues',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 17 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  // autogroupsyic8Br (54Do35yFsXoHiV4z8GSYiC)
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        13 * fem, 10 * fem, 36 * fem, 10.81 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 108, 166, 214),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupfhqtVgc (54Do95oGJa6SSD8UbSfHQt)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 39.19 * fem),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // inefficiencydetected8zU (23:26)
                                constraints: BoxConstraints(
                                  maxWidth: 180 * fem,
                                ),
                                child: Text(
                                  '',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 17 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  // autogroupkc24Tmr (54DoHq3h6kh7jZPEXaKC24)
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        14 * fem, 11 * fem, 135 * fem, 20.58 * fem),
                    width: double.infinity,
                    height: 100 * fem,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 82, 221, 214),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroupwlpatsA (54DoP5PwyfT87ZwHgrWLPA)
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
