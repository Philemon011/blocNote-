import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSliverAppBar extends StatelessWidget {
  const AppSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Icon(Icons.edit, color: Colors.white,),
          const SizedBox(width: 10.0,),
          Text('Bloc Note', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 24),)
        ],
      ),
      floating: true,
    );
  }
}