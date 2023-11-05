class ScoreModel {
  String? apikey;
  List<Data>? data;
  String? status;
  Info? info;

  ScoreModel({this.apikey, this.data, this.status, this.info});

  ScoreModel.fromJson(Map<String, dynamic> json) {
    apikey = json['apikey'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    status = json['status'];
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['apikey'] = apikey;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['status'] = status;
    if (info != null) {
      data['info'] = info!.toJson();
    }
    return data;
  }
}

class Data {
  String? id;
  String? name;
  String? matchType;
  String? status;
  String? venue;
  String? date;
  String? dateTimeGMT;
  List<String>? teams;
  List<TeamInfo>? teamInfo;
  List<Score>? score;
  String? seriesId;
  bool? fantasyEnabled;
  bool? bbbEnabled;
  bool? hasSquad;
  bool? matchStarted;
  bool? matchEnded;

  Data(
      {this.id,
      this.name,
      this.matchType,
      this.status,
      this.venue,
      this.date,
      this.dateTimeGMT,
      this.teams,
      this.teamInfo,
      this.score,
      this.seriesId,
      this.fantasyEnabled,
      this.bbbEnabled,
      this.hasSquad,
      this.matchStarted,
      this.matchEnded});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    matchType = json['matchType'];
    status = json['status'];
    venue = json['venue'];
    date = json['date'];
    dateTimeGMT = json['dateTimeGMT'];
    teams = json['teams'].cast<String>();
    if (json['teamInfo'] != null) {
      teamInfo = <TeamInfo>[];
      json['teamInfo'].forEach((v) {
        teamInfo!.add(TeamInfo.fromJson(v));
      });
    }
    if (json['score'] != null) {
      score = <Score>[];
      json['score'].forEach((v) {
        score!.add(Score.fromJson(v));
      });
    }
    seriesId = json['series_id'];
    fantasyEnabled = json['fantasyEnabled'];
    bbbEnabled = json['bbbEnabled'];
    hasSquad = json['hasSquad'];
    matchStarted = json['matchStarted'];
    matchEnded = json['matchEnded'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['matchType'] = matchType;
    data['status'] = status;
    data['venue'] = venue;
    data['date'] = date;
    data['dateTimeGMT'] = dateTimeGMT;
    data['teams'] = teams;
    if (teamInfo != null) {
      data['teamInfo'] = teamInfo!.map((v) => v.toJson()).toList();
    }
    if (score != null) {
      data['score'] = score!.map((v) => v.toJson()).toList();
    }
    data['series_id'] = seriesId;
    data['fantasyEnabled'] = fantasyEnabled;
    data['bbbEnabled'] = bbbEnabled;
    data['hasSquad'] = hasSquad;
    data['matchStarted'] = matchStarted;
    data['matchEnded'] = matchEnded;
    return data;
  }
}

class TeamInfo {
  String? name;
  String? shortname;
  String? img;

  TeamInfo({this.name, this.shortname, this.img});

  TeamInfo.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    shortname = json['shortname'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['shortname'] = shortname;
    data['img'] = img;
    return data;
  }
}

class Score {
  int? r;
  int? w;
  double? o;
  String? inning;

  Score({this.r, this.w, this.o, this.inning});

  Score.fromJson(Map<String, dynamic> json) {
    r = json['r'];
    w = json['w'];
    o = json['o'];
    inning = json['inning'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['r'] = r;
    data['w'] = w;
    data['o'] = o;
    data['inning'] = inning;
    return data;
  }
}

class Info {
  int? hitsToday;
  int? hitsUsed;
  int? hitsLimit;
  int? credits;
  int? server;
  int? offsetRows;
  int? totalRows;
  double? queryTime;
  int? s;
  int? cache;

  Info(
      {this.hitsToday,
      this.hitsUsed,
      this.hitsLimit,
      this.credits,
      this.server,
      this.offsetRows,
      this.totalRows,
      this.queryTime,
      this.s,
      this.cache});

  Info.fromJson(Map<String, dynamic> json) {
    hitsToday = json['hitsToday'];
    hitsUsed = json['hitsUsed'];
    hitsLimit = json['hitsLimit'];
    credits = json['credits'];
    server = json['server'];
    offsetRows = json['offsetRows'];
    totalRows = json['totalRows'];
    queryTime = json['queryTime'];
    s = json['s'];
    cache = json['cache'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hitsToday'] = hitsToday;
    data['hitsUsed'] = hitsUsed;
    data['hitsLimit'] = hitsLimit;
    data['credits'] = credits;
    data['server'] = server;
    data['offsetRows'] = offsetRows;
    data['totalRows'] = totalRows;
    data['queryTime'] = queryTime;
    data['s'] = s;
    data['cache'] = cache;
    return data;
  }
}
