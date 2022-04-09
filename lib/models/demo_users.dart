import 'package:flutter/material.dart';

const users = [
  userDq,
  userZendaya,
  userSteve,
  userAlbert,
  userItachi,
  userTony,
  userSalvatore,
  userSacha,
  userDeven,
  userSahil,
  userReuben,
  userNash,
];

const userDq = DemoUser(
  id: 'dulquer',
  name: 'Dulquer Salman',
  image:
      'https://www.thenewsminute.com/sites/default/files/Dulquer_Salmaan_30012021_1200-compressed.jpg',
);

const userZendaya = DemoUser(
  id: 'zendaya',
  name: 'Zendaya',
  image:
      'https://i.insider.com/621f9eff75b649001845aed2?width=1136&format=jpeg',
);

const userSteve = DemoUser(
  id: 'steve',
  name: 'Steve Jobs',
  image:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Steve_Jobs_Headshot_2010-CROP_%28cropped_2%29.jpg/800px-Steve_Jobs_Headshot_2010-CROP_%28cropped_2%29.jpg',
);

const userAlbert = DemoUser(
  id: 'albert',
  name: 'Albert Einstein',
  image:
      'https://myhero.com/images/guest/g232934/hero69038/g232934_u82416_einst_6.jpg',
);

const userItachi = DemoUser(
  id: 'itachi',
  name: 'Itachi Uchiha',
  image:
      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/733b5da9-efe6-4697-a4f9-9e9d4975f828/de8g74b-0127ef26-febe-4074-8ac3-b74dbde3b0a3.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzczM2I1ZGE5LWVmZTYtNDY5Ny1hNGY5LTllOWQ0OTc1ZjgyOFwvZGU4Zzc0Yi0wMTI3ZWYyNi1mZWJlLTQwNzQtOGFjMy1iNzRkYmRlM2IwYTMuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.mN0QqkKs8ZgCGC6w5chXHPUgjd7Yi3z1m6Of2x-serc',
);

const userTony = DemoUser(
  id: 'tony',
  name: 'Robert Downey JR',
  image: 'https://www.onthisday.com/images/people/robert-downey-jr-medium.jpg',
);

const userSalvatore = DemoUser(
  id: 'salvatore',
  name: 'Salvatore Giordano',
  image:
      'https://pbs.twimg.com/profile_images/1252869649349238787/cKVPSIyG_400x400.jpg',
);

const userSacha = DemoUser(
  id: 'sacha',
  name: 'Sacha Arbonel',
  image:
      'https://pbs.twimg.com/profile_images/1199684106193375232/IxA9XLuN_400x400.jpg',
);

const userDeven = DemoUser(
  id: 'deven',
  name: 'Deven Joshi',
  image:
      'https://media-exp1.licdn.com/dms/image/C5603AQEOxp7UnhprfQ/profile-displayphoto-shrink_200_200/0/1575308030141?e=1652918400&v=beta&t=1MHf1kI7vBz1XJssVA_qz-zZdQROli19N9a5e56mnRs',
);

const userSahil = DemoUser(
  id: 'sahil',
  name: 'Sahil Kumar',
  image:
      'https://lsa.umich.edu/rll/people/graduate-students/kusahil.lsa-image-servlet.jpg',
);

const userReuben = DemoUser(
  id: 'reuben',
  name: 'Reuben Turner',
  image:
      'https://pbs.twimg.com/profile_images/1370571324578480130/UxBBI30i_400x400.jpg',
);

const userNash = DemoUser(
  id: 'nash',
  name: 'Nash Ramdial',
  image:
      'https://pbs.twimg.com/profile_images/1436372495381172225/4wDDMuD8_400x400.jpg',
);

@immutable
class DemoUser {
  final String id;
  final String name;
  final String image;

  const DemoUser({
    required this.id,
    required this.name,
    required this.image,
  });
}
