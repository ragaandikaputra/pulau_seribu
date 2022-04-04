import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Pulau Seribu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite_border_outlined,
            color: Colors.black,
            size: 20,
          ),
          const Text('7.5'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.black, Icons.call_outlined, 'CALL'),
        _buildButtonColumn(Colors.black, Icons.near_me_outlined, 'ROUTE'),
        _buildButtonColumn(Colors.black, Icons.share_outlined, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: EdgeInsets.all(32),
      child: Text(
        'Taman Nasional Kepulauan Seribu (TNKS) adalah kawasan pelestarian alam bahari di Indonesia yang terletak kurang lebih 45 km pada lokasi geografis 5°23’ – 5°40’ LS, 106°25’ – 106°37’ BT sebelah utara Jakarta. Secara administratif kawasan TNKS berada dalam wilayah Kabupaten Administrasi Kepulauan Seribu, terletak di Kecamatan Kepulauan Seribu Utara, tepatnya di tiga kelurahan yaitu Pulau Panggang, Pulau Kelapa dan Pulau Harapan. Secara geografis Taman Nasional ini terletak pada 5°24’ – 5°45’ LS, 106°25’ – 106°40’ BT’ dan mencakup luas 107.489 ha (SK Menteri Kehutanan Nomor 6310/Kpts-II/2002), yang terdiri dari wilayah perairan laut seluas 107.489 ha (22,65% dari luas perairan Kabupaten Administrasi Kepulauan Seribu) dan 2 pulau (Pulau Penjaliran Barat dan Pulau Penjaliran Timur) seluas 39,50 ha. Dengan demikian, pulau-pulau lain (wilayah daratan) yang berjumlah 108 sesungguhnya tidak termasuk dalam kawasan TNKS Pulau Seribu.' ,
        textAlign: TextAlign.justify,
      ),
    );
    
    return MaterialApp(
      title: 'The jungle',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'asset/seribu.jpeg',
              width: 600,
              height: 600,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}