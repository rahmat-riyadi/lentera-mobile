import 'package:flutter/material.dart';

class File extends StatelessWidget {
  const File({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'cari',
                  hintStyle: TextStyle(fontSize: 18, color: Color(0xFF8C8C8C)),
                  contentPadding: EdgeInsets.all(5),
                  fillColor: Color(0xFFE0E0E0),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)
                  ),
                  prefixIcon: Icon(Icons.search, size: 20,),
                ),
              ),
            ),
            Center(
              child: Text(
                "file tidak tersedia",
                style: TextStyle(
                  color: Colors.black45
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
