class Chat {
  String name;
  String image;
  String messageDate;
  String mostRecentMessage;

  Chat(
      {required this.image,
        required this.name,
        required this.messageDate,
        required this.mostRecentMessage});
}

var chatList = [
  Chat(
      name: 'Ko Weiku',
      image: 'images/person1.png',
      messageDate: '24/07/2022',
      mostRecentMessage: 'Bro, wanna?'),
  Chat(
      name: 'Yudi',
      image: 'images/person3.png',
      messageDate: '24/07/2022',
      mostRecentMessage: 'Training flutter?'),
  Chat(
      name: 'Diana',
      image: 'images/person2.png',
      messageDate: '24/07/2022',
      mostRecentMessage: 'Ada job flutter nih, ikut ngga?'),
];



