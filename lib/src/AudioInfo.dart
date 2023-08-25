class AudioInfo {

  String? url;
  String? title;
  String? desc;
  String? coverUrl;//封面图

  String? audioTitle;//音乐名称
  String? singer;//演唱者
  String? audioUrl;//播放地址
  String? album;//唱片专辑
  String? artClassification;//艺术分类
  String? arranger;//编曲
  String? producer;//制作
  String? performanceForm;//表演形式
  bool? liked;//是否喜欢
  String? audioId;//曲目id

  AudioInfo({this.url,this.title,this.desc, this.coverUrl,
        this.audioTitle,this.singer,this.audioUrl,this.album,this.artClassification,
        this.arranger,this.producer,this.performanceForm,this.liked,this.audioId
      }){
    if(url == null){
      url = audioUrl ?? "";
    }
    if(audioUrl == null){
      audioUrl = url ?? "";
    }
    if(title == null){
      title = audioTitle ?? '';
    }
    if(audioTitle == null){
      audioTitle = title ?? "";
    }
    if(desc == null){
      desc = singer ?? "";
    }
  }

  AudioInfo.fromJson(dynamic json) {
    coverUrl = json['coverUrl'];
    audioTitle = json['audioTitle'];
    singer = json['singer'];
    audioUrl = json['audioUrl'];
    album = json['album'];
    artClassification = json['artClassification'];
    arranger = json['arranger'];
    producer = json['producer'];
    performanceForm = json['performanceForm'];
    liked = json['liked'];
    audioId = json['audioId'];
    url = json['url'];
    title = json['title'];
    desc = json['desc'];

  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['coverUrl'] = coverUrl;
    map['audioTitle'] = audioTitle;
    map['singer'] = singer;
    map['audioUrl'] = audioUrl;
    map['album'] = album;
    map['artClassification'] = artClassification;
    map['arranger'] = arranger;
    map['producer'] = producer;
    map['performanceForm'] = performanceForm;
    map['liked'] = liked;
    map['audioId'] = audioId;
    map['url'] = url;
    map['title'] = title;
    map['desc'] = desc;
    return map;
  }

  @override
  String toString() {
    return 'AudioInfo{url: $url, title: $title, desc: $desc, coverUrl: $coverUrl}';
  }
}
