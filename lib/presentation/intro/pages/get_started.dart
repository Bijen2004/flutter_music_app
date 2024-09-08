
import 'package:flutter/material.dart';
import 'package:flutter_music/common/wodgets/button/basic_app_button.dart';
import 'package:flutter_music/core/configs/assets/app_images.dart';
import 'package:flutter_music/core/configs/assets/app_vectors.dart';
import 'package:flutter_music/presentation/choose_mode/pages/choose_mode.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 40,horizontal: 40
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(AppImages.introBG),fit: BoxFit.fill)
              ),

            ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
            child: Column(
              children: [
                Align(
                  alignment:Alignment.topCenter,
                  child: SvgPicture.asset(
                      appVectors.logo
                  ),
                ),
                const Spacer(),
                const Text('Enjoy Listening to music',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 18),),
                const SizedBox(height: 21,),
                const Text('Enjoy Listening to music',
                  style: TextStyle(color: Colors.grey,fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20,),
                BasicAppButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=> const ChooseModePage()));
                }, title: 'Get Started')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
