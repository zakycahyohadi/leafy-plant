class OrnamentalPlant {
  String name;
  String description;
  String type;
  String origin;
  String careInstructions;
  String imageAsset;
  List<String> imageDtls;
  
  bool isLiked; // Status like
  int likeCount; // Jumlah like

  OrnamentalPlant({
    required this.name,
    required this.description,
    required this.type,
    required this.origin,
    required this.careInstructions,
    required this.imageAsset,
    required this.imageDtls,
    this.isLiked = false,
    this.likeCount = 0,
  });
}




var ornamentalPlants = [
  OrnamentalPlant(
  name: 'Aglonema',
  description: 'Aglonema dikenal dengan daun hias berwarna-warni, ideal untuk indoor.',
  type: 'Tanaman Daun',
  origin: 'Asia Tenggara',
  careInstructions: 'Letakkan di tempat teduh dengan penyiraman teratur.',
  imageAsset: 'lib/thumbnail/aglonema.jpeg',
  imageDtls: [
    'lib/detail/aglonema1.jpg',
  ],
),
OrnamentalPlant(
  name: 'Keladi',
  description: 'Keladi memiliki daun besar dan berwarna kontras, cocok untuk indoor maupun outdoor.',
  type: 'Tanaman Daun',
  origin: 'Tropis',
  careInstructions: 'Siram secara teratur dan hindari sinar matahari langsung.',
  imageAsset: 'lib/thumbnail/keladi.jpg',
  imageDtls: [
    'lib/detail/keladi1.jpg',
  ],
),
OrnamentalPlant(
  name: 'Bunga Kertas',
  description: 'Bunga Kertas atau Bougainvillea adalah tanaman berbunga yang tahan panas dengan warna cerah.',
  type: 'Bunga',
  origin: 'Amerika Selatan',
  careInstructions: 'Butuh sinar matahari penuh dan penyiraman moderat.',
  imageAsset: 'lib/thumbnail/bougainvillea.jpg',
  imageDtls: [
    'lib/detail/bougainvillea1.jpeg',
  ],
),
OrnamentalPlant(
  name: 'Monstera',
  description: 'Monstera dikenal dengan daun besar dan berlubang, populer sebagai tanaman hias.',
  type: 'Tanaman Daun',
  origin: 'Tropis Amerika',
  careInstructions: 'Siram secara teratur dan hindari sinar matahari langsung.',
  imageAsset: 'lib/thumbnail/monstera.jpg',
  imageDtls: [
    'lib/detail/monstera1.jpg',
  ],
),
OrnamentalPlant(
  name: 'Lidah Mertua',
  description: 'Lidah Mertua adalah tanaman hias yang mudah dirawat dan tahan terhadap kondisi lingkungan.',
  type: 'Sukulen',
  origin: 'Afrika Barat',
  careInstructions: 'Letakkan di tempat terang dan siram secukupnya.',
  imageAsset: 'lib/thumbnail/lidahmertua.jpg',
  imageDtls: [
    'lib/detail/lidahmertua1.jpg',

  ],
),

OrnamentalPlant(
  name: 'Bunga Matahari',
  description: 'Bunga matahari adalah tanaman yang menghasilkan bunga besar dan cerah.',
  type: 'Bunga',
  origin: 'Amerika Utara',
  careInstructions: 'Butuh sinar matahari penuh dan tanah yang subur.',
  imageAsset: 'lib/thumbnail/bungamatahari.jpg',
  imageDtls: [
    'lib/detail/bungamatahari1.jpeg',
  ],
),
OrnamentalPlant(
  name: 'Kamboja',
  description: 'Kamboja adalah tanaman berbunga dengan aroma yang harum, populer di Indonesia.',
  type: 'Bunga',
  origin: 'Tropis',
  careInstructions: 'Siram secara teratur dan berikan sinar matahari penuh.',
  imageAsset: 'lib/thumbnail/kamboja.jpg',
  imageDtls: [
    'lib/detail/kamboja1.jpg',
  ],
),
OrnamentalPlant(
  name: 'Beringin',
  description: 'Beringin adalah pohon besar yang sering dijadikan bonsai sebagai tanaman hias.',
  type: 'Pohon',
  origin: 'Asia Tenggara',
  careInstructions: 'Perlu sinar matahari penuh dan penyiraman moderat.',
  imageAsset: 'lib/thumbnail/beringin.jpg',
  imageDtls: [
    'lib/detail/beringin1.jpeg',
  ],
),
OrnamentalPlant(
  name: 'Bonsai Serut',
  description: 'Bonsai Serut adalah pohon kecil yang dirawat dalam pot, sering dijadikan hiasan.',
  type: 'Pohon',
  origin: 'Asia',
  careInstructions: 'Siram secukupnya dan letakkan di tempat terang.',
  imageAsset: 'lib/thumbnail/bonsaiserut.webp',
  imageDtls: [
    'lib/detail/bonsaiserut1.jpg',
  ],
),
OrnamentalPlant(
  name: 'Lidah Buaya',
  description: 'Lidah buaya adalah tanaman sukulen yang dikenal dengan manfaat kesehatannya.',
  type: 'Sukulen',
  origin: 'Afrika',
  careInstructions: 'Siram sedikit dan letakkan di tempat terang.',
  imageAsset: 'lib/thumbnail/lidahbuaya.jpeg',
  imageDtls: [
    'lib/detail/lidahbuaya1.jpg',
  ],
),
OrnamentalPlant(
  name: 'Anggrek Bulan',
  description: 'Anggrek Bulan adalah tanaman berbunga yang sering dijadikan tanaman hias.',
  type: 'Bunga',
  origin: 'Tropis Asia',
  careInstructions: 'Siram secara teratur dan letakkan di tempat terang.',
  imageAsset: 'lib/thumbnail/anggrekbulan.jpg',
  imageDtls: [
    'lib/detail/anggrekbulan1.jpg',
  ],
),
OrnamentalPlant(
  name: 'Puring',
  description: 'Puring adalah tanaman dengan daun berwarna-warni yang sering dijadikan pagar hidup.',
  type: 'Tanaman Daun',
  origin: 'Asia Tenggara',
  careInstructions: 'Butuh sinar matahari penuh dan penyiraman teratur.',
  imageAsset: 'lib/thumbnail/puring.jpeg',
  imageDtls: [
    'lib/detail/puring1.png',
  ],
),
OrnamentalPlant(
  name: 'Anthurium',
  description: 'Gelombang Cinta adalah tanaman dengan daun besar dan hijau, populer di Indonesia.',
  type: 'Tanaman Daun',
  origin: 'Tropis',
  careInstructions: 'Siram secukupnya dan letakkan di tempat terang.',
  imageAsset: 'lib/thumbnail/anthurium.jpg',
  imageDtls: [
    'lib/detail/anthurium1.jpg',
  ],
),
OrnamentalPlant(
  name: 'Asoka',
  description: 'Asoka adalah tanaman berbunga yang sering dijadikan pagar hidup.',
  type: 'Bunga',
  origin: 'Asia Selatan',
  careInstructions: 'Butuh sinar matahari penuh dan penyiraman teratur.',
  imageAsset: 'lib/thumbnail/asoka.jpg',
  imageDtls: [
    'lib/detail/asoka1.webp',
  ],
),
OrnamentalPlant(
  name: 'Dracaena',
  description: 'Dracaena adalah tanaman dengan daun panjang dan runcing, sering dijadikan hiasan indoor.',
  type: 'Tanaman Daun',
  origin: 'Afrika',
  careInstructions: 'Siram secukupnya dan hindari sinar matahari langsung.',
  imageAsset: 'lib/thumbnail/dracaena.jpg',
  imageDtls: [
    'lib/detail/dracaena1.jpg',
  ],
),

OrnamentalPlant(
  name: 'Sirih Gading',
  description: 'Sirih Gading adalah tanaman rambat dengan daun hijau yang cocok untuk indoor.',
  type: 'Tanaman Daun',
  origin: 'Asia Tenggara',
  careInstructions: 'Siram secara teratur dan letakkan di tempat terang.',
  imageAsset: 'lib/thumbnail/sirihgading.jpg',
  imageDtls: [
    'lib/detail/sirihgading1.jpeg',
  ],
),
OrnamentalPlant(
  name: 'Kaktus Mini',
  description: 'Kaktus Mini adalah sukulen kecil yang populer sebagai dekorasi meja.',
  type: 'Sukulen',
  origin: 'Amerika Utara',
  careInstructions: 'Siram secukupnya dan letakkan di tempat terang.',
  imageAsset: 'lib/thumbnail/kaktusmini.jpg',
  imageDtls: [
    'lib/detail/kaktusmini1.jpg',
  ],
),
OrnamentalPlant(
  name: 'Kemuning',
  description: 'Kemuning adalah tanaman berbunga yang sering digunakan sebagai pagar hidup.',
  type: 'Bunga',
  origin: 'Asia Tenggara',
  careInstructions: 'Butuh sinar matahari penuh dan penyiraman teratur.',
  imageAsset: 'lib/thumbnail/kemuning.jpg',
  imageDtls: [
    'lib/detail/kemuning1.jpg',
  ],
),
OrnamentalPlant(
  name: 'Melati',
  description: 'Melati adalah tanaman berbunga dengan aroma harum, sering dijadikan simbol nasional.',
  type: 'Bunga',
  origin: 'Asia Selatan',
  careInstructions: 'Siram secara teratur dan letakkan di tempat terang.',
  imageAsset: 'lib/thumbnail/melati.jpg',
  imageDtls: [
    'lib/detail/melati1.jpeg',
  ],
),

OrnamentalPlant(
  name: 'Sri Rejeki',
  description: 'Sri Rejeki adalah tanaman hias indoor yang dipercaya membawa keberuntungan.',
  type: 'Tanaman Daun',
  origin: 'Asia',
  careInstructions: 'Letakkan di tempat teduh dan siram secara teratur.',
  imageAsset: 'lib/thumbnail/srirejeki.jpg',
  imageDtls: [
    'lib/detail/srirejeki1.webp',
  ],
),
OrnamentalPlant(
  name: 'Palem Kuning',
  description: 'Palem Kuning adalah tanaman hias dengan daun berbentuk kipas yang sering dijadikan dekorasi outdoor.',
  type: 'Pohon',
  origin: 'Madagaskar',
  careInstructions: 'Butuh sinar matahari penuh dan penyiraman teratur.',
  imageAsset: 'lib/thumbnail/palemkuning.webp',
  imageDtls: [
    'lib/detail/palemkuning1.JPG',
  ],
),
OrnamentalPlant(
  name: 'Sikas',
  description: 'Sikas adalah tanaman purba dengan daun seperti pakis, sering dijadikan tanaman hias.',
  type: 'Pohon',
  origin: 'Asia Tenggara',
  careInstructions: 'Butuh sinar matahari penuh dan penyiraman moderat.',
  imageAsset: 'lib/thumbnail/sikas.jpg',
  imageDtls: [
    'lib/detail/sikas1.jpg',
  ],
),
OrnamentalPlant(
  name: 'Bambu Rejeki',
  description: 'Bambu Rejeki adalah tanaman hias yang diyakini membawa keberuntungan dan kesejahteraan.',
  type: 'Tanaman Daun',
  origin: 'Afrika',
  careInstructions: 'Letakkan di tempat terang dan siram secukupnya.',
  imageAsset: 'lib/thumbnail/bamburejeki.jpg',
  imageDtls: [
    'lib/detail/bamburejeki1.jpg',
  ],
),
OrnamentalPlant(
  name: 'Paku Tanduk Rusa',
  description: 'Paku Tanduk Rusa adalah tanaman paku epifit yang sering dijadikan hiasan gantung.',
  type: 'Tanaman Paku',
  origin: 'Tropis',
  careInstructions: 'Letakkan di tempat teduh dan siram secara teratur.',
  imageAsset: 'lib/thumbnail/pakutandukrusa.jpg',
  imageDtls: [
    'lib/detail/pakutandukrusa1.jpeg',
  ],
),
OrnamentalPlant(
  name: 'Daun Dolar',
  description: 'Daun Dolar adalah tanaman rambat dengan daun kecil, sering dijadikan tanaman indoor.',
  type: 'Tanaman Rambat',
  origin: 'Asia Tenggara',
  careInstructions: 'Letakkan di tempat terang dan siram secara teratur.',
  imageAsset: 'lib/thumbnail/daundolar.webp',
  imageDtls: [
    'lib/detail/daundolar1.webp',
  ],
),
OrnamentalPlant(
  name: 'Daun Ungu',
  description: 'Daun Ungu adalah tanaman hias dengan warna daun ungu yang mencolok.',
  type: 'Tanaman Daun',
  origin: 'Amerika Selatan',
  careInstructions: 'Letakkan di tempat teduh dan siram secara teratur.',
  imageAsset: 'lib/thumbnail/daunungu.jpg',
  imageDtls: [
    'lib/detail/daunungu1.jpg',
  ],
),


];