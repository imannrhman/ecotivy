import 'package:flutter/material.dart';
import 'package:jovial_svg/jovial_svg.dart';

import '../di/get_it.dart';
import '../utils/resource_manager.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        const SizedBox(width: 10,),
        SizedBox(
          height: 50,
          width: 50,
          child: Image(
            fit: BoxFit.contain,
            image: getIt<PNGResourceManager>().getAssetWidget(Resource.upiIcon),),
        ),
        const SizedBox(width: 15,),
        SizedBox(
          height: 150,
          width: 150,
          child: Image(
            fit: BoxFit.contain,
            image: getIt<PNGResourceManager>().getAssetWidget(Resource.kmIcon),),
        ),
      ],
    );
  }
}
