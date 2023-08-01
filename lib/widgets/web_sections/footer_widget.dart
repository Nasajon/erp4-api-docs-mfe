import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWith = MediaQuery.of(context).size.width;
    return Container(
      height: 100.0,
      color: const Color.fromARGB(30, 82, 100, 122),
      child: Padding(
        padding: NsjPadding.small(context),
        child: screenWith > 650.0
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    'https://nasajon-dev.s3.us-west-2.amazonaws.com/gednasajon/logo/Nasajon.png',
                    width: screenWith > 650.0 ? 200.0 : 150.0,
                  ),
                  Flexible(
                    child: Text(
                      '© 1982 – 2022 Nasajon | Av. Oscar Niemeyer, 2000 / 4º andar – Edifício Aqwa Corporate – Rio de Janeiro – RJ – CEP 20220-297',
                      style: NsjText.bodyMedium(context)!.copyWith(
                        color: AnaColors.darkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    'https://nasajon-dev.s3.us-west-2.amazonaws.com/gednasajon/logo/Nasajon.png',
                    width: screenWith > 650.0 ? 200.0 : 150.0,
                  ),
                  Flexible(
                    child: Text(
                      '© 1982 – 2022 Nasajon | Av. Oscar Niemeyer, 2000 / 4º andar – Edifício Aqwa Corporate – Rio de Janeiro – RJ – CEP 20220-297',
                      style: NsjText.bodyMedium(context)!.copyWith(
                        color: AnaColors.darkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
