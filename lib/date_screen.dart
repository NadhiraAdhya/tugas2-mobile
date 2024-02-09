import 'package:flutter/material.dart';

class DateScreen extends StatefulWidget {
  const DateScreen({Key? key}) : super(key: key);

  @override
  State<DateScreen> createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  int _questionIndex = 0;
  int _score = 0;

  final List<Question> _questions = [
    Question(
      imageUrl: 'https://www.shutterstock.com/image-vector/wheel-trencher-construction-machine-vector-260nw-2137428955.jpg',
      options: ['Truck', 'Bus', 'Trencher', 'Excavator'],
      correctOptionIndex: 1,
    ),
    Question(
      imageUrl: 'https://img2.pngdownload.id/20180209/rce/kisspng-loader-heavy-equipment-excavator-clip-art-hand-painted-bulldozers-5a7dba328e3f44.6966737315181891065827.jpg',
      options: ['Grader', 'Buldozzer', 'Dump Truck', 'Paver'],
      correctOptionIndex: 2,
    ),
    Question(
      imageUrl: 'https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/13435/forklift-clipart-md.png',
      options: ['Forklift', 'Crane', 'Compactor', 'Loader'],
      correctOptionIndex: 3,
    ),
    Question(
      imageUrl: 'https://clipart-library.com/newhp/19-194952_png-library-library-excavator-clipart-transparent-excavator-clipart.png',
      options: ['Trencher', 'Paver', 'Truck', 'Excavator'],
      correctOptionIndex: 4,
    ),
    Question(
      imageUrl: 'https://www.pngitem.com/pimgs/m/277-2779409_caterpillar-inc-bulldozer-clipart-hd-png-download.png',
      options: ['Buldozzer', 'Excavator', 'Crane', 'Grader'],
      correctOptionIndex: 5,
    ),
    // Tambahkan pertanyaan lebih banyak jika diperlukan
  ];

  void _answerQuestion(int selectedOptionIndex) {
    if (_questions[_questionIndex].correctOptionIndex == selectedOptionIndex) {
      // Jawaban benar
      setState(() {
        _score++;
      });
    }

    // Pindah ke pertanyaan berikutnya
    setState(() {
      _questionIndex++;
    });

    // Jika sudah menjawab semua pertanyaan, tampilkan skor akhir
    if (_questionIndex == _questions.length) {
      _showResultDialog();
    }
  }

  void _showResultDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Skor Akhir'),
          content: Text('Skor Anda: $_score dari ${_questions.length}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Tutup dialog
                // Reset kuis
                setState(() {
                  _questionIndex = 0;
                  _score = 0;
                });
              },
              child: Text('Ulangi Kuis'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Tebak Gambar'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/originals/bb/d4/a4/bbd4a42c6ce568edc36934b0437d51c1.jpg'), // Ganti dengan URL gambar latar belakang
            fit: BoxFit.cover,
          ),
        ),
        child: _questionIndex < _questions.length
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      _questions[_questionIndex].imageUrl,
                      width: 150.0, // Ganti dengan lebar yang diinginkan
                      height: 150.0, // Ganti dengan tinggi yang diinginkan
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 20.0),
                    ..._questions[_questionIndex].options.asMap().entries.map(
                          (entry) => ElevatedButton(
                            onPressed: () => _answerQuestion(entry.key),
                            child: Text(entry.value),
                          ),
                        ),
                  ],
                ),
              )
            : Center(
                child: ElevatedButton(
                  onPressed: _showResultDialog,
                  child: Text('Lihat Skor Akhir'),
                ),
              ),
      ),
    );
  }
}

class Question {
  final String imageUrl;
  final List<String> options;
  final int correctOptionIndex;

  Question({
    required this.imageUrl,
    required this.options,
    required this.correctOptionIndex,
  });
}
