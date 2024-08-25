class RadioModel {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? serial;
  final String? audioUrl;
  RadioModel({required this.image,required  this.title, required this.subtitle,required  this.serial, required this.audioUrl});

  factory RadioModel.fromJson(Map json) => RadioModel(
    image:json['image'],
    title:json['title'],
    subtitle:json['subtitle'],
    serial:json['votes']?.toString(),
    audioUrl: json['audio_url'],
  );
}
// radio stream url search engine: https://streamurl.link/
List<RadioModel> radioList2 = [
  RadioModel(
    image: 'https://picsum.photos/200?random=1',
    title: 'Radio Bhumi',
    subtitle: 'Biswashey Bangladesh',
    serial: '1',
    audioUrl: "http://stream.zeno.fm/7yu7rczw34zuv",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=2',
    title: 'Gaan Baksho - HD Bangla Radio',
    subtitle: 'পৃথিবী মাতুক বাংলা গানে',
    serial: '2',
    audioUrl: "https://listen.openstream.co/5013/audio",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=3',
    title: 'Bengali Radio Live',
    subtitle: 'Best Of Bengali Beats',
    serial: '3',
    audioUrl: "http://s2.xrad.io:8072/;stream/2",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=4',
    title: 'BBC World',
    subtitle: 'bbc_world_service',
    serial: '4',
    audioUrl: "https://as-hls-ww-live.akamaized.net/pool_904/live/ww/bbc_world_service/bbc_world_service.isml/bbc_world_service-audio%3d96000.norewind.m3u8",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=5',
    title: 'BBC Radio Asian Network',
    subtitle: 'asian',
    serial: '5',
    audioUrl: "https://as-hls-ww.live.cf.md.bbci.co.uk/pool_904/live/ww/bbc_asian_network/bbc_asian_network.isml/bbc_asian_network-audio%3d96000.norewind.m3u8",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=6',
    title: 'BBC Radio 1',
    subtitle: 'bbc',
    serial: '6',
    audioUrl: "https://as-hls-ww.live.cf.md.bbci.co.uk/pool_904/live/ww/bbc_radio_one/bbc_radio_one.isml/bbc_radio_one-audio%3d96000.norewind.m3u8",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=7',
    title: 'BBC Radio 3',
    subtitle: 'Live music and arts',
    serial: '7',
    audioUrl: "https://as-hls-ww-live.akamaized.net/pool_904/live/ww/bbc_radio_three/bbc_radio_three.isml/bbc_radio_three-audio%3d96000.norewind.m3u8",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=8',
    title: 'BBC Radio 4',
    subtitle: 'Intelligent speech',
    serial: '8',
    audioUrl: "https://as-hls-ww-live.akamaized.net/pool_904/live/ww/bbc_radio_fourfm/bbc_radio_fourfm.isml/bbc_radio_fourfm-audio%3d96000.norewind.m3u8",
  ),

  RadioModel(
    image: 'https://picsum.photos/200?random=9',
    title: 'BBC Radio 5 Live',
    subtitle: 'Live news - live sport',
    serial: '9',
    audioUrl: "https://as-hls-ww.live.cf.md.bbci.co.uk/pool_904/live/ww/bbc_radio_five_live/bbc_radio_five_live.isml/bbc_radio_five_live-audio%3d96000.norewind.m3u8",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=10',
    title: 'BBC Radio 6 Music',
    subtitle: 'music',
    serial: '10',
    audioUrl: "https://as-hls-ww-live.akamaized.net/pool_904/live/ww/bbc_6music/bbc_6music.isml/bbc_6music-audio%3d96000.norewind.m3u8",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=11',
    title: 'Lofi Music',
    subtitle: 'lofi: a place to escape reality~.',
    serial: '11',
    audioUrl: "https://lofi.stream.laut.fm/lofi",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=12',
    title: 'LoFi Focus',
    subtitle: 'Lofi Beats to sleep/study...',
    serial: '12',
    audioUrl: "https://lofi.stream.laut.fm/lofi",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=13',
    title: 'Song',
    subtitle: '1-live-minden.',
    serial: '13',
    audioUrl: "https://song.stream.laut.fm/song",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=14',
    title: 'JAM FM',
    subtitle: 'Black and Dance Hits von morgen',
    serial: '14',
    audioUrl: "http://stream.jam.fm/jamfm-nmr/mp3-192/",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=15',
    title: '90s90s Hiphop',
    subtitle: 'Die 90er waren ohne Zweifel die goldenen Jahre für Rap und Hiphop',
    serial: '15',
    audioUrl: "http://streams.90s90s.de/hiphop/mp3-192/",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=16',
    title: 'Radio City Hindi',
    subtitle: 'Online Radio. Anytime, Anywhere.',
    serial: '16',
    audioUrl: "https://stream.zeno.fm/u7sgq72zrf9uv",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=17',
    title: 'Radio Dil',
    subtitle: 'Bhaktisangeet',
    serial: '17',
    audioUrl: "https://us3.streamingpulse.com/ssl/radiodil2",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=18',
    title: 'Hindi Desi Bollywood Evergreen Hits',
    subtitle: 'Best of Hindi Desi Bollywood Evergreen Hits',
    serial: '18',
    audioUrl: "http://cast2.asurahosting.com:8569/stream",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=19',
    title: 'Mera Sangeet USA',
    subtitle: 'No. 1 Hindi Radio Station in the US',
    serial: '19',
    audioUrl: "https://playerservices.streamtheworld.com/api/livestream-redirect/MS_EAST_S01.mp3",
  ),
  RadioModel(
    image: 'https://picsum.photos/200?random=20',
    title: 'Oye India Radio',
    subtitle: 'Your Life-Your Music',
    serial: '20',
    audioUrl: "http://janus.shoutca.st:8060/stream",
  ),
];
