class Doctor {
  String name;
  String imagePath;
  String education;
  String experience;
  String fee;
  String availableTime;
  String imageURL;

  Doctor({
    required this.name,
    required this.imagePath,
    required this.education,
    required this.experience,
    required this.fee,
    required this.availableTime,
    required this.imageURL,
  });
}

// ตัวอย่างข้อมูลแพทย์
List<Doctor> doctors = [
  Doctor(
    name: 'Anna',
    imagePath: 'assets/images/doctor1.jpg',
    education: 'Ph.D. in Psychology',
    experience: '5 years',
    fee: '\$100',
    availableTime: 'Monday - Friday, 9 AM - 5 PM',
    imageURL:
        'https://cdn.pixabay.com/photo/2017/01/29/21/16/nurse-2019420_640.jpg',
  ),
  Doctor(
    name: 'Jane Smith',
    imagePath: 'assets/images/doctor2.jpg',
    education: 'M.S. in Clinical Psychology',
    experience: '8 years',
    fee: '\$120',
    availableTime: 'Tuesday - Saturday, 10 AM - 6 PM',
    imageURL:
        'https://cdn.pixabay.com/photo/2017/03/22/19/07/child-2166079_640.jpg',
  ),
  Doctor(
    name: 'Taloy',
    imagePath: 'assets/images/doctor3.jpg', // Unique image path
    education: 'M.S. in Clinical Psychology',
    experience: '8 years',
    fee: '\$120',
    availableTime: 'Tuesday - Saturday, 10 AM - 6 PM',
    imageURL:
        'https://cdn.pixabay.com/photo/2016/02/10/13/03/dentist-1191671_640.jpg',
  ),
  Doctor(
    name: 'Adison',
    imagePath: 'assets/images/doctor4.jpg', // Unique image path
    education: 'M.S. in Clinical Psychology',
    experience: '15 years',
    fee: '\$120',
    availableTime: 'Tuesday - Saturday, 10 AM - 6 PM',
    imageURL:
        'https://cdn.pixabay.com/photo/2017/05/23/17/12/doctor-2337835_640.jpg',
  ),
  Doctor(
    name: 'Alsa',
    imagePath: 'assets/images/doctor5.jpg', // Unique image path
    education: 'M.S. in Clinical Psychology',
    experience: '2 years',
    fee: '\$120',
    availableTime: 'Tuesday - Saturday, 10 AM - 6 PM',
    imageURL:
        'https://cdn.pixabay.com/photo/2017/03/20/00/51/dr-2157993_640.jpg',
  ),
];
