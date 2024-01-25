import 'package:ecotivy/di/get_it.dart';
import 'package:ecotivy/features/onboarding/widgets/profile.dart';
import 'package:ecotivy/utils/resource_manager.dart';
import 'package:flutter/material.dart';

class DeveloperProfile extends StatelessWidget {
  const DeveloperProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 500,
        padding: const EdgeInsets.all(10),
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
             Expanded(
              child: Profile(
                profile: Image(image: getIt<PNGResourceManager>().getAssetWidget(Resource.avatarWoman3)),
                title: 'Profile Pengembang',
                name: 'Patricia Bunga Juwita Galand',
                subtitle: 'NIM 2003227',
              ),
            ),
            const SizedBox(height: 30,),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Profile(
                      profile: Image(image: getIt<PNGResourceManager>().getAssetWidget(Resource.avatarWoman1)),
                      title: 'Profil Dosen Pembimbing 1',
                      name: 'Dra. Hj. Tin Rustini, M.Pd.',
                      subtitle: 'NIP 196008011986032001',
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: Profile(
                      profile: Image(image: getIt<PNGResourceManager>().getAssetWidget(Resource.avatarMan)),
                      title: 'Profil Dosen Pembimbing 2',
                      name: 'M. Ridwan Sutisna, S.Pd., M.Pd.',
                      subtitle: 'NIP 198705152019031015',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
