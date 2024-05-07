import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Aplikasi Biodiversitas Fauzan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          hintText: "Search Nama Hewan ...",
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Mamalia",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(
                          image: 'assets/images/anjing.jpg',
                          title: 'Anjing',
                          description:
                              'Anjing adalah mamalia domestik yang sering dijadikan hewan peliharaan..',
                        ),
                        makeItem(
                          image: 'assets/images/kucing.jpg',
                          title: 'Kucing',
                          description:
                              'Kucing adalah mamalia kecil yang sering dijadikan hewan peliharaan dengan ciri khas bulu halus, sikap mandiri, dan kemampuan untuk berburu yang baik..',
                        ),
                        makeItem(
                          image: 'assets/images/kuda.jpg',
                          title: 'Kuda',
                          description:
                              'Kuda adalah mamalia besar dengan ciri khas berupa tubuh yang kuat, kaki panjang, dan biasanya digunakan manusia untuk transportasi.',
                        ),
                        makeItem(
                          image: 'assets/images/kapibara.jpg',
                          title: 'Kapibara',
                          description:
                              'Kapibara adalah mamalia herbivora terbesar di dunia yang hidup di Amerika Selatan.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Burung",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(
                          image: 'assets/images/elang.jpg',
                          title: 'Elang',
                          description:
                              'Elang adalah burung pemangsa yang memiliki cakar kuat, sayap lebar, dan penglihatan yang tajam, sering ditemukan di berbagai habitat seperti gunung, hutan, dan dataran tinggi.',
                        ),
                        makeItem(
                          image: 'assets/images/owl.webp',
                          title: 'Burung Hantu',
                          description:
                              'Burung hantu adalah jenis burung yang dikenal karena kebiasaannya aktif pada malam hari dan memiliki bulu-bulu halus yang memungkinkannya terbang dengan gerakan yang tenang dan hening.',
                        ),
                        makeItem(
                          image: 'assets/images/gagak.jpg',
                          title: 'Gagak',
                          description:
                              'Gagak adalah jenis burung hitam pemangsa yang cerdas dan sering ditemukan di berbagai habitat seperti hutan, perkotaan, dan daerah terbuka.',
                        ),
                        makeItem(
                          image: 'assets/images/penguin.jpg',
                          title: 'Pinguin',
                          description:
                              'Pinguin adalah burung laut yang tidak dapat terbang, hidup di belahan bumi selatan seperti Antartika, serta di sejumlah pulau di belahan bumi utara.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Reptil",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(
                          image: 'assets/images/komodo.jpg',
                          title: 'Komodo',
                          description:
                              'Komodo adalah jenis kadal besar yang ditemukan di Indonesia, terutama di pulau-pulau seperti Pulau Komodo, Rinca, Flores, dan Gili Motang. Mereka dikenal sebagai hewan terbesar di dunia dari keluarga kadal.',
                        ),
                        makeItem(
                          image: 'assets/images/buaya.jpg',
                          title: 'Buaya',
                          description:
                              'Buaya adalah reptil karnivora yang hidup di air, seperti sungai, rawa, dan danau di berbagai wilayah tropis dan subtropis di seluruh dunia. Mereka memiliki tubuh yang besar, kulit bersisik, dan ciri khas mulut yang panjang serta gigi yang tajam.',
                        ),
                        makeItem(
                          image: 'assets/images/kura.jpg',
                          title: 'Kura-Kura',
                          description:
                              'Kura-kura adalah reptil bertubuh cekung dengan cangkang keras yang melindungi tubuhnya. Mereka dapat ditemukan di berbagai habitat, termasuk daratan, perairan tawar, dan laut.',
                        ),
                        makeItem(
                          image: 'assets/images/ular.jpg',
                          title: 'Ular',
                          description:
                              'Ular adalah reptil yang biasanya bersifat melata dan tidak memiliki kaki, Mereka dapat ditemukan di berbagai habitat, mulai dari hutan hujan tropis hingga padang rumput,.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title, description}) {
    return GestureDetector(
      onTap: () {
        // Show dialog with description
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(title),
              content: Text(description),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Container(
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ],
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
