import 'package:flutter/material.dart';
import 'package:hello_world/praktikum4/model/tourism_place.dart';
import 'package:hello_world/praktikum4/percobaan1/done_tourism_list.dart';
import 'package:hello_world/praktikum4/percobaan1/tourism_list.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends  State<MainScreen> {

  final List<TourismPlace> doneTourismPlaceList = [];
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        name: 'Stadion Surajaya Lamongan',
        location: 'Deket, Kabupaten Lamongan',
        imageAsset: 'assets/images/SSJ.jpg',
        openDay: 'Open Everyday',
        openTime: '08:00-18:00',
        price: "Rp. 0,-",
        desc: 'Yang hobi menonton sepak bola, anda harus datang ke tempat yang satu ini, yaitu Stadion Surajaya di Lamongan. Di stadion ini, tim lokal Lamongan Persela berlatih sebelum melakukan pertandingan melawan tim-tim lain dari seluruh Indonesia dan agar mereka bisa menjadi tim yang terbaik.',
        imageList: [
          'assets/images/SSJ1.jpg',
          'assets/images/SSJ2.jpg',
          'assets/images/SSJ3.jpg']
    ),
    TourismPlace(
        name: 'Museum Sunan Drajat',
        location: 'Drajat, Paciran, Kabupaten Lamongan',
        imageAsset: 'assets/images/MuseumDrajat.jpg',
        openDay: 'Open Everyday',
        openTime: '08:00-16:00',
        price: "Rp. 2.000,-",
        desc: 'Di dalam museum ini, para wisatawan bisa belajar tentang sejarah perkembangan Islam khususnya di Lamongan. Anda juga bisa melihat-lihat koleksi peninggalan seperti kitab dan barang lain yang dulunya dimiliki oleh Sunan Drajat. Untuk anda yang ingin tahu lebih banyak mengenai Sunan Drajat dan juga ajarannya, anda bisa langsung datang ke area makam Sunan Drajat dan museumnya.',
        imageList: [
          'assets/images/MuseumDrajat1.jpg',
          'assets/images/MuseumDrajat2.jpg',
          'assets/images/MuseumDrajat3.jpg']
    ),
    TourismPlace(
        name: 'Makam Dewi Sekardadu',
        location: 'di dekat Waduk Gondang',
        imageAsset: 'assets/images/Sekardadu.jpg',
        openDay: 'Open Everyday',
        openTime: '00:00-24:00',
        price: "Rp. 0,-",
        desc: 'Obyek wisata religi lainnya yang ada di Lamongan yang bisa anda masukan ke dalam daftar tempat wisata yang harus anda kunjungi adalah Makam Dewi Sekardadu. Makam yang lokasinya berdekatan dengan Waduk Gondang ini memang terkadang ramai dikunjungi oleh para wisatawan di waktu-waktu tertentu untu berziarah.',
        imageList: [
          'assets/images/Sekardadu1.jpg',
          'assets/images/Sekardadu2.jpg',
          'assets/images/Sekardadu.jpg']
    ),
    TourismPlace(
        name: 'Waduk Gondang',
        location: 'Kabupaten Lamongan',
        imageAsset: 'assets/images/Gondang.jpg',
        openDay: 'Open Everyday',
        openTime: '00:00-24:00',
        price: "Rp. 0,-",
        desc: 'Obyek wisata lainnya yang akan kita bahas sekarang adalah Waduk Gondang. Waduk ini di sana memang sudah menjadi wisata andalan yang sering didatangi oleh para muda-mudi yang ingin nongkrong dan ngobrol-ngobrol bersama teman atau pasangan.',
        imageList: [
          'assets/images/Gondang1.jpg',
          'assets/images/Gondang.jpg',
          'assets/images/Gondang2.jpg',
          'assets/images/Gondang3.jpg',
        ]
    ),
    TourismPlace(
        name: 'Makam Sunan Drajat',
        location: 'Drajat, Paciran, Kabupaten Lamongan',
        imageAsset: 'assets/images/SunanDrajat.jpg',
        openDay: 'Open Everyday',
        openTime: '00:00-24:00',
        price: "Rp. 0,-",
        desc: 'Banyak para wisatawan yang datang kesana untuk berziarah di makam beliau. Selain itu anda juga bisa menikmati pemandangan alam yang ada di sekelilingnya. Untuk anda yang ingin berziarah ke Makam Sunan Drajat, anda bisa datang dengan kendaraan pribadi atau transportasi umum.',
        imageList: [
          'assets/images/SunanDrajat1.jpg',
          'assets/images/SunanDrajat.jpg',
          'assets/images/SunanDrajat2.jpg']
    ),
    TourismPlace(
        name: 'Surabaya Submarine',
        location: 'Jl. Pemuda',
        imageAsset: 'assets/images/submarine.jpg',
        openDay: 'Open Everyday',
        openTime: '08:00-16:00',
        price: "Rp. 5.000,-",
        desc: 'Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside the submarine.',
        imageList: [
          'assets/images/monkasel-1.jpg',
          'assets/images/monkasel-2.jpg',
          'assets/images/monkasel-3.jpg']
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Lamongan'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return DoneTourismList(
                      doneTourismPlaceList: doneTourismPlaceList
                  );
                })
              );
            }
          )
        ],
      ),
      body: TourismList(doneTourismPlaceList: doneTourismPlaceList,),
    );
  }
}

