class WeiBoModel {
  String weiboId;
  String categoryId;
  String content;
  UserInfo userInfo;
  List<String> picurl;
  String zfContent;
  String zfNick;
  String zfUserId;
  List<String> zfPicurl;
  String zfWeiBoId;
  String zfVedioUrl;
  bool containZf;
  String vediourl;
  String tail;
  int  createtime;
  int zanStatus;
  int zhuanfaNum;
  int likeNum;
  int commentNum;

  WeiBoModel.fromJson(Map<String, dynamic> json) {
    weiboId = json['objectId'] ?? "";
    categoryId = json['catid'] ?? "";
    content = json['content'] ?? "";
    userInfo = UserInfo.fromJson(json['userInfo'] ?? "");
    String files = json["files"];
    picurl = List<String>();
    if (files != null) {
      files = files.replaceAll(",", "");
      picurl.add(files);
    }
    zfContent = json['zfContent'] ?? "";
    zfNick = json['zfNick'] ?? "";
    zfUserId = json['zfUserId'] ?? "";
    // zfPicurl = json["files"].replaceAll(",", "");
    zfWeiBoId = json['zfWeiBoId'] ?? "";
    containZf = json['containZf'] ?? false;
    vediourl = json['vediourl'] ?? "";
    zfVedioUrl = json['zfVedioUrl'] ?? "";

    createtime = json['createtime'] ?? 0;

    tail = json['tail'] ?? "";
    zanStatus = json['zanStatus'] ?? 0;
    zhuanfaNum = json['zhuanfaNum'] ?? 0;
    likeNum = json['likeNum'] ?? 0;
    commentNum = json['commentNum'] ?? 0;
  }

  WeiBoModel(
      {this.weiboId,
        this.categoryId,
        this.content,
        this.userInfo,
        this.picurl,
        this.zfContent,
        this.zfNick,
        this.zfUserId,
        this.zfPicurl,
        this.zfWeiBoId,
        this.containZf,
        this.vediourl,
        this.zfVedioUrl,
        this.tail,
        this.createtime,
        this.zanStatus,
        this.zhuanfaNum,
        this.likeNum,
        this.commentNum
       });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['weiboId'] = this.weiboId;
    data['categoryId'] = this.categoryId;
    data['content'] = this.content;
    if (this.userInfo != null) {
      data['userInfo'] = this.userInfo.toJson();
    }
    data['picurl'] = this.picurl;

    data['zfContent'] = this.zfContent;
    data['zfNick'] = this.zfNick;
    data['zfUserId'] = this.zfUserId;
    data['zfPicurl'] = this.zfPicurl;
    data['zfWeiBoId'] = this.zfWeiBoId;
    data['containZf'] = this.containZf;
    data['vediourl'] = this.vediourl;
    data['zfVedioUrl']= this.zfVedioUrl;
    data['tail'] = this.tail;
    data['createtime'] = this.createtime;
    data['zanStatus'] = this.zanStatus;

    data['zhuanfaNum'] = this.zhuanfaNum;
    data['likeNum'] = this.likeNum;
    data['commentNum'] = this.commentNum;

    return data;
  }
}

class UserInfo  {
  String id;
  String nick;
  String headurl;
  String decs;
  int ismember ;
  int isvertify ;



  UserInfo({this.id, this.nick, this.headurl, this.decs, this.ismember, this.isvertify});

  UserInfo.fromJson(String json) {
    var list = json.split(";");
    if (list.length >= 3) {
      id = list[0];
      nick = list[1];
      headurl = list[2];
    } else {
      id = "";
      nick = "";
      headurl = "";
    }
    // id = json['id'] ?? 0;
    // nick = json['nick'] ?? "";
    // headurl = json['headurl'] ?? "";
    decs =  "";
    ismember = 0;
    isvertify = 0;


  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nick'] = this.nick;
    data['headurl'] = this.headurl;
    data['decs'] = this.decs;
    data['ismember'] = this.decs;
     data['isvertify'] = this.decs;

    return data;
  }
}