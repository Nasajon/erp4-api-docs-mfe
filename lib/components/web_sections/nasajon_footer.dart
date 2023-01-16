import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color.fromARGB(30, 82, 100, 122),
      child: Padding(
        padding: const EdgeInsets.only(left: 128.0, right: 128.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              'https://nasajon-dev.s3.us-west-2.amazonaws.com/gednasajon/logo/Nasajon.png',
              width: 160,
            ),
            SizedBox(
                child: Text(
              '© 1982 – 2022 Nasajon | Av. Oscar Niemeyer, 2000 / 4º andar – Edifício Aqwa Corporate – Rio de Janeiro – RJ – CEP 20220-297',
              style: Theme.of(context).textTheme.subtitle2,
            )),
          ],
        ),
      ),
    );
  }
}
