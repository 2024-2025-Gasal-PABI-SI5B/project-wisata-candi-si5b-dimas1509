import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget{
  final  Candi candi;

  const DetailScreen({super.key, required this.candi});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child : Image.asset(
                candi.imageAsset,
                width: double.infinity,
                height: 300,
                fit :BoxFit.cover,
              ),
            ),
          ),
          // Tombol Back Custom 
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[100]?.withOpacity(0.0),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back)),
              ),
            ),
          ],
      ),
      // Detail Info 
      Padding (
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column{
          children: [
            // info atas 
            Row(
              children:
              MainAxisAlignment:mainAxisAlignment.spaceBetween,
                Text(candi.name),
                IconButton(onPressed: (){}), icon: icon(/Icons.favorite_)
              ],
            )
          
        }
        
