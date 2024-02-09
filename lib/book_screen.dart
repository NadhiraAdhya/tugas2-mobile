import 'package:flutter/material.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  
  // List of products
  List<Product> products = [
    Product(
      imageUrl: 'https://www.pngitem.com/pimgs/m/277-2779409_caterpillar-inc-bulldozer-clipart-hd-png-download.png',
      title: 'Buldozzer',
      description: 'Buldozzer adalah salah satu alat berat yang digunakan untuk mengangkat batu atau pasir dengan cara mengambilnya dengan bagian depan untuk mempermudah dan mempercepat pekerjaan buldozzer sering digunakan di pertambangan atau proyek bangunan besar seperti pembangunan rumah atau komplek atau perumahan lainnya.',
    ),
    Product(
      imageUrl: 'https://clipart-library.com/newhp/19-194952_png-library-library-excavator-clipart-transparent-excavator-clipart.png',
      title: 'Excavator',
      description: 'Excavator adalah alat berat dalam industri konstruksi yang digunakan untuk menggali, memindahkan, dan menangani material. Dengan struktur yang dapat berputar 360 derajat, excavator memiliki boom, arm, dan bucket sebagai komponen utamanya. Mesin diesel memberikan daya untuk menggerakkan sistem hidrolik yang mengendalikan pergerakan alat tersebut. Excavator sering digunakan dalam proyek konstruksi, pertambangan, dan pemeliharaan saluran air, serta memiliki keunggulan dalam fleksibilitas dan efisiensi pekerjaan.',
    ),
      Product(
      imageUrl: 'https://webstockreview.net/images/clipart-cat-dump-truck.png',
      title: 'Dump Truck',
      description: 'Dump truck adalah kendaraan berat yang digunakan untuk memindahkan material konstruksi dalam jumlah besar. Dilengkapi dengan bak yang dapat diangkat, dump truck memungkinkan muatan dibuang dengan cepat. Kendaraan ini umumnya digunakan untuk transportasi tanah, pasir, kerikil, atau material lainnya di lokasi konstruksi.',
    ),
    Product(
      imageUrl: 'https://img2.pngdownload.id/20180209/rce/kisspng-loader-heavy-equipment-excavator-clip-art-hand-painted-bulldozers-5a7dba328e3f44.6966737315181891065827.jpg',
      title: 'Loader',
      description: 'Loader adalah alat berat yang digunakan untuk memuat material ke dalam truk atau tempat penyimpanan. Dilengkapi dengan bucket di bagian depan, loader mampu menggali dan mengangkat material dengan cepat. Alat ini sering digunakan dalam konstruksi, pertambangan, dan industri untuk pemindahan material yang efisien.',
    ),
    Product(
      imageUrl: 'https://static.vecteezy.com/system/resources/previews/002/975/758/non_2x/flat-roll-design-heavy-machinery-vector.jpg',
      title: 'Compactor',
      description: 'Compactor adalah alat berat yang digunakan untuk meratakan dan memadatkan tanah atau material konstruksi dengan cara menggiling atau menghancurkan. Dengan desain gulungan atau roda yang bergetar, compactor membantu menciptakan permukaan yang lebih padat dan kokoh. Digunakan dalam konstruksi jalan, landasan pacu bandara, dan proyek konstruksi lainnya.',
    ),
    Product(
      imageUrl: 'https://besthydraulicindo.com/wp-content/uploads/2022/04/ap.jpg',
      title: 'Paver',
      description: 'Paver adalah alat berat yang digunakan untuk menempatkan dan meratakan aspal atau beton selama proses konstruksi jalan atau landasan pacu. Dengan conveyor dan screed, paver memastikan penyebaran yang merata dan tepat ketebalan material konstruksi. Digunakan untuk menciptakan permukaan jalan yang halus dan tahan lama.',
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('INFORMATION PAGE'),
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Gambar Background Fullscreen
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.pinimg.com/originals/bb/d4/a4/bbd4a42c6ce568edc36934b0437d51c1.jpg'), // Ganti dengan URL gambar background
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Konten ListView
          ListView.builder(
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Gambar
                    Container(
                      width: 200.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(products[index].imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),

                    // Judul
                    Text(
                      products[index].title,
                      style: TextStyle(fontSize: 24.0, color: Colors.white),
                    ),
                    SizedBox(height: 8.0),

                    // Deskripsi
                    Text(
                      products[index].description,
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Product {
  final String imageUrl;
  final String title;
  final String description;

  Product({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}
