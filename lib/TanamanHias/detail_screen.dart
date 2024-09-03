import 'package:flutter/material.dart';
import 'package:tanaman_1/model/tanamanhias.dart';

class DetailScreen extends StatelessWidget {
  final OrnamentalPlant plant;

  const DetailScreen({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          plant.name,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, 
          weight: 50, size: 30,), // Tombol kembali berwarna merah
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Carousel with Border and Shadow
            Container(
              height: 250,
              child: PageView.builder(
                itemCount: plant.imageDtls.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        plant.imageDtls[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            // Plant Name
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                plant.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.green,
                ),
              ),
            ),
            // Description with Padding and Background Color
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.green.shade300, width: 4)
              ),
              child: Text(
                plant.description,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            // Plant Type
            ListTile(
              leading: Icon(Icons.tag, color: Colors.green),
              title: Text(
                'Type: ${plant.type}',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
            ),
            // Plant Origin
            ListTile(
              leading: Icon(Icons.place, color: Colors.green),
              title: Text(
                'Origin: ${plant.origin}',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
            ),
            // Care Instructions
            ListTile(
              leading: Icon(Icons.info_outline, color: Colors.green),
              title: Text(
                'Care Instructions: ${plant.careInstructions}',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
