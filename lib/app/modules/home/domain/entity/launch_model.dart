// ignore_for_file: non_constant_identifier_names

class LaunchModel {
  late String? id;
  late int? flight_number;
  late String? name;
  late String? date_utc;
  late int? date_unix;
  late String? date_local;
  late String? date_precision;
  late String? static_fire_date_utc;
  late int? static_fire_date_unix;
  late bool? tdb;
  late bool? net;
  late int? window;
  late String? rocket;
  late bool? success;
  late bool? upcoming;
  late String? details;
  late Fairings? fairings;
  late List<Failures>? failures;
  late List<String>? crew;
  late List<String>? ships;
  late List<String>? capsules;
  late List<String>? payloads;
  late String launchpad;
  late bool auto_update;
  late List<Cores>? cores;
  late Links? links;

  LaunchModel({
    id,
    flight_number,
    name,
    date_utc,
    date_unix,
    date_local,
    date_precision,
    static_fire_date_utc,
    static_fire_date_unix,
    tdb,
    net,
    window,
    rocket,
    success,
    upcoming,
    details,
    fairings,
    failures,
    crew,
    ships,
    capsules,
    payloads,
    launchpad,
    auto_update,
    cores,
    links,
  });

  LaunchModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    flight_number = json['flight_number'];
    name = json['name'];
    date_utc = json['date_utc'];
    date_unix = json['date_unix'];
    date_local = json['date_local'];
    date_precision = json['date_precision'];
    static_fire_date_utc = json['static_fire_date_utc'];
    static_fire_date_unix = json['static_fire_date_unix'];
    tdb = json['tdb'];
    net = json['net'];
    window = json['window'];
    rocket = json['rocket'];
    success = json['success'];
    upcoming = json['upcoming'];
    details = json['details'];
    fairings =
        json['fairings'] != null ? Fairings.fromJson(json['fairings']) : null;
    failures = json['failures'] != null
        ? (json['failures'] as List).map((i) => Failures.fromJson(i)).toList()
        : null;
    crew = json['crew'] != null
        ? (json['crew'] as List).map((i) => i as String).toList()
        : null;
    ships = json['ships'] != null
        ? (json['ships'] as List).map((i) => i as String).toList()
        : null;
    capsules = json['capsules'] != null
        ? (json['capsules'] as List).map((i) => i as String).toList()
        : null;
    payloads = json['payloads'] != null
        ? (json['payloads'] as List).map((i) => i as String).toList()
        : null;
    launchpad = json['launchpad'];
    auto_update = json['auto_update'];
    cores = json['cores'] != null
        ? (json['cores'] as List).map((i) => Cores.fromJson(i)).toList()
        : null;
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['flight_number'] = flight_number;
    data['name'] = name;
    data['date_utc'] = date_utc;
    data['date_unix'] = date_unix;
    data['date_local'] = date_local;
    data['date_precision'] = date_precision;
    data['static_fire_date_utc'] = static_fire_date_utc;
    data['static_fire_date_unix'] = static_fire_date_unix;
    data['tdb'] = tdb;
    data['net'] = net;
    data['window'] = window;
    data['rocket'] = rocket;
    data['success'] = success;
    data['upcoming'] = upcoming;
    data['details'] = details;
    data['fairings'] = fairings!.toJson();
    data['failures'] = failures!.map((v) => v).toList();
    data['crew'] = crew!.map((v) => v).toList();
    data['ships'] = ships!.map((v) => v).toList();
    data['capsules'] = capsules!.map((v) => v).toList();
    data['payloads'] = payloads!.map((v) => v).toList();
    data['launchpad'] = launchpad;
    data['auto_update'] = auto_update;
    data['cores'] = cores!.map((v) => v).toList();
    data['links'] = links!.toJson();
    return data;
  }
}

class Failures {
  late int? time;
  late int? altitude;
  late String reason;

  Failures.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    altitude = json['altitude'];
    reason = json['reason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = time;
    data['altitude'] = altitude;
    data['reason'] = reason;
    return data;
  }
}

class Fairings {
  late bool? reused;
  late bool? recovery_attempt;
  late bool? recovered;

  Fairings.fromJson(Map<String, dynamic> json) {
    reused = json['reused'];
    recovery_attempt = json['recovery_attempt'];
    recovered = json['recovered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['reused'] = reused;
    data['recovery_attempt'] = recovery_attempt;
    data['recovered'] = recovered;
    return data;
  }
}

class Cores {
  late String? core;
  late int? flight;
  late bool? gridfins;
  late bool? legs;
  late bool? reused;
  late bool? landing_attempt;
  late bool? landing_success;
  late String? landing_type;
  late String? landpad;

  Cores.fromJson(Map<String, dynamic> json) {
    core = json['core'];
    flight = json['flight'];
    gridfins = json['gridfins'];
    legs = json['legs'];
    reused = json['reused'];
    landing_attempt = json['landing_attempt'];
    landing_success = json['landing_success'];
    landing_type = json['landing_type'];
    landpad = json['landpad'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{
      'core': core,
      'flight': flight,
      'gridfins': gridfins,
      'legs': legs,
      'reused': reused,
      'landing_attempt': landing_attempt,
      'landing_success': landing_success,
      'landing_type': landing_type,
      'landpad': landpad,
    };

    return data;
  }
}

class Links {
  late Patch? path;
  late Reddit? reddit;
  late String? presskit;
  late String? webcast;
  late String? youtube_id;
  late String? article;
  late String? wikipedia;

  Links.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    reddit = json['reddit'] != null ? Reddit.fromJson(json['reddit']) : null;
    presskit = json['presskit'];
    webcast = json['webcast'];
    youtube_id = json['youtube_id'];
    article = json['article'];
    wikipedia = json['wikipedia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['path'] = path;
    data['reddit'] = reddit!.toJson();
    data['presskit'] = presskit;
    data['webcast'] = webcast;
    data['youtube_id'] = youtube_id;
    data['article'] = article;
    data['wikipedia'] = wikipedia;
    return data;
  }
}

class Patch {
  late String? small;
  late String? large;
}

class Reddit {
  late String? campaign;
  late String? launch;
  late String? media;
  late String? recovery;

  Reddit.fromJson(Map<String, dynamic> json) {
    campaign = json['campaign'];
    launch = json['launch'];
    media = json['media'];
    recovery = json['recovery'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['campaign'] = campaign;
    data['launch'] = launch;
    data['media'] = media;
    data['recovery'] = recovery;
    return data;
  }
}
