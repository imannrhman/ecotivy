import 'package:ecotivy/di/get_it.dart';
import 'package:ecotivy/features/onboarding/widgets/profile.dart';
import 'package:ecotivy/utils/resource_manager.dart';
import 'package:flutter/material.dart';

class ExpertValidationProfile extends StatelessWidget {
  const ExpertValidationProfile({super.key});

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
            const Center(
              child: Text("Profile Validasi Ahli Pengembang",
                style: TextStyle(
                    color: Color(0xFF4F4F4F),
                    fontWeight: FontWeight.w700,
                    fontSize: 18
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Expanded(
              child: Profile(
                profile: Image(image: getIt<PNGResourceManager>().getAssetWidget(Resource.avatarWoman2)),
                title: 'Profil Ahli Media',
                name: 'Nurul Hidayah, M.Pd.',
                subtitle: 'NIP 198907292018032001',
              ),
            ),
            const SizedBox(height: 30,),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Profile(
                      profile: Image(image: getIt<PNGResourceManager>().getAssetWidget(Resource.avatarWoman4)),
                      title: 'Profil Ahli Materi',
                      name: 'Yona Wahyuningsih, S.Pd., M.Pd.',
                      subtitle: 'NIPT 920200119910529201',
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Profile(
                      profile: Image(image: getIt<PNGResourceManager>().getAssetWidget(Resource.avatarWoman1)),
                      title: 'Profil Ahli Bahasa',
                      name: 'Dr. Kurniawati, M.Pd.',
                      subtitle: 'NIP 197708202005012017',
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