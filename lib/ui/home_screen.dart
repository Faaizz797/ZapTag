import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hallo, Panjoel 👋",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Web Developer",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "ZapTag ⚡︎",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Tombol 1: Generate
                  Expanded(
                    child: BuildSquareButton(
                      label: "Generate QR Code",
                      icon: Icons.qr_code,
                      gradientColors: const [
                        Color(0xFF53006B),
                        Color(0xFFAA04D8),
                      ],
                      onTap: () {
                        Navigator.pushNamed(context, '/generate');
                      },
                    ),
                  ),
                  const SizedBox(height: 10), // Jarak antar tombol
                  // Tombol 2: Scan
                  Expanded(
                    child: BuildSquareButton(
                      label: "Scan QR Code",
                      icon: Icons.qr_code_scanner,
                      gradientColors: const [
                        Color(0xFF53006B),
                        Color(0xFFAA04D8),
                      ],
                      onTap: () {
                        Navigator.pushNamed(context, '/scan');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

class BuildSquareButton extends StatelessWidget {
  const BuildSquareButton({
    super.key,
    required this.label,
    required this.icon,
    required this.gradientColors,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final List<Color> gradientColors;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 60, // Ukuran ikon besar
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.settings),
//           )
//         ],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Row(
//               children: [
//                 CircleAvatar(
//                   radius: 30,
//                   backgroundImage: AssetImage('assets/images/profile.jpg'),
//                 ),
//                 SizedBox(width: 20),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Hallo, Panjoel 👋",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       "Web Developer",
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.blueGrey,
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Welcome to",
//                   style: TextStyle(
//                     fontSize: 20,
//                   ),
//                 ),
//                 Text(
//                   "ZapTag ⚡︎",
//                   style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w800,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               children: [
//                 BuildButtonRectangular(
//                   label: "Generate QR Code",
//                   icon: Icons.qr_code,
//                   backgroundColor: const Color(0xFF53006B),
//                   textColor: Color(0xFFFF9B00),
//                   onTap: () {
//                     Navigator.pushNamed(context, '/generate');
//                   },
//                 ),
//                 const SizedBox(height: 30),
//                 BuildButtonRectangular(
//                   label: "Scan QR Code",
//                   icon: Icons.qr_code_scanner,
//                   backgroundColor: const Color(0xFF53006B),
//                   textColor: Color(0xFFFF9B00),
//                   onTap: () {
//                     Navigator.pushNamed(context, '/scan');
//                   },
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class BuildButtonRectangular extends StatelessWidget {
//   const BuildButtonRectangular({
//     super.key,
//     required this.label,
//     required this.icon,
//     required this.backgroundColor,
//     required this.textColor,
//     required this.onTap,
//   });

//   final String label;
//   final IconData icon;
//   final Color backgroundColor;
//   final Color textColor;
//   final VoidCallback onTap;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 10),
//         decoration: BoxDecoration(
//           color: backgroundColor,
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               icon,
//               color: textColor,
//               size: 24,
//             ),
//             const SizedBox(width: 10),
//             Text(
//               label,
//               style: TextStyle(
//                 color: textColor,
//                 fontSize: 25,
//                 fontWeight: FontWeight.w800,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

