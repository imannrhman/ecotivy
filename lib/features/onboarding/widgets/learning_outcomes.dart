import 'package:flutter/material.dart';

class LearningOutcomes extends StatelessWidget {

  const LearningOutcomes({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Info "ECOTIVY"',
              style: TextStyle(
                  color: Color(0xFF4F4F4F),
                  fontWeight: FontWeight.w700,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: Container(
                width: 600,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: List.generate(3, (_) => Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(right: 4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF616161),
                        ),
                      )),
                    ),
                    const SizedBox(height: 17,),
                    const Text(
                      """“ECOTIVY”  merupakan media pembelajaran interaktif berbasis website yang dapat digunakan dalam pembelajaran muatan IPS materi Kegiatan Ekonomi untuk Peserta Didik kelas 4 SD.""",
                      style: TextStyle(
                        color: Color(0xFF949292),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            const Text("Capaian Pembalajaran",
              style: TextStyle(
                  color: Color(0xFF4F4F4F),
                  fontWeight: FontWeight.w700,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: Container(
                width: 600,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: List.generate(3, (_) => Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(right: 4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF616161),
                        ),
                      )),
                    ),
                    const SizedBox(height: 17,),
                    const Text("""Setelah mengakses media pembelajaran “ECOTIVY”, peserta didik diharapkan mampu membedakan antara kebutuhan dan keinginan mengenai nilai mata uang, dan mendemostrasikan bagaimana uang digunakan untuk memenuhi kebutuhan hidup sehari-hari melalui kegiatan ekonomi.""",
                      style: TextStyle(
                          color: Color(0xFF949292),
                          fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
