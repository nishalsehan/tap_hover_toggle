import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tap_hover_toggle/tap_hover_toggle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tap Hover Toggle Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.latoTextTheme()
      ),
      home: const MyHomePage(title: 'Tap Hover Toggle Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TapHoverToggle(
                builder: (isHoverOrTap){
                  return Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isHoverOrTap?const Color(0xFF4267B2):Colors.white,
                        border: Border.all(
                            color:  isHoverOrTap?const Color(0xFF4267B2):Colors.black12,
                            width: 1
                        )
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                        FontAwesomeIcons.facebookF,
                        size: 16,
                        color:  isHoverOrTap?Colors.white:Colors.black38
                    ),
                  );
                },
              ),
              const SizedBox(
                width: 12,
              ),
              TapHoverToggle(
                builder: (isHoverOrTap){
                  return Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isHoverOrTap?const Color(0xFF1DA1F2):Colors.white,
                        border: Border.all(
                            color:  isHoverOrTap?const Color(0xFF1DA1F2):Colors.black12,
                            width: 1
                        )
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                        FontAwesomeIcons.twitter,
                        size: 16,
                        color:  isHoverOrTap?Colors.white:Colors.black38
                    ),
                  );
                },
              ),
              const SizedBox(
                width: 12,
              ),
              TapHoverToggle(
                builder: (isHoverOrTap){
                  return Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isHoverOrTap?const Color(0xFF25D366):Colors.white,
                        border: Border.all(
                            color:  isHoverOrTap?const Color(0xFF25D366):Colors.black12,
                            width: 1
                        )
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                        FontAwesomeIcons.whatsapp,
                        size: 16,
                        color:  isHoverOrTap?Colors.white:Colors.black38
                    ),
                  );
                },
              ),
              const SizedBox(
                width: 12,
              ),
              TapHoverToggle(
                builder: (isHoverOrTap){
                  return Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isHoverOrTap?const Color(0xFFE60023):Colors.white,
                        border: Border.all(
                            color:  isHoverOrTap?const Color(0xFFE60023):Colors.black12,
                            width: 1
                        )
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                        FontAwesomeIcons.pinterest,
                        size: 16,
                        color:  isHoverOrTap?Colors.white:Colors.black38
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: size.width*0.8,
            child: TapHoverToggle(
              builder: (isHoverOrTap){
                return Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        color:  isHoverOrTap?null: Colors.blueAccent,
                        border: Border.all(
                            color: Colors.blueAccent,
                            width: 1.5
                        )
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "Tap to Continue",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                letterSpacing: 0.6,
                                fontWeight: FontWeight.w700,
                                color: isHoverOrTap?Colors.blueAccent:Colors.white,
                                height: 1.4
                            )
                        ),
                      ],
                    )
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: size.width*0.8,
            child: TapHoverToggle(
              builder: (isHoverOrTap){
                return Image(
                  image: AssetImage(isHoverOrTap?'assets/images/bulb_on.JPEG':'assets/images/bulb_off.JPEG'),
                  height: size.height*0.3,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
