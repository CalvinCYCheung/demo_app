enum BusOrganization {
  kmb,
  ctb,
  nib;

  String get allRoutesAPIUrl {
    return switch (this) {
      kmb => kmbAllRouteApi,
      ctb => ctbAllRouteApi,
      nib => nibbAllRouteApi,
    };
  }

  String get routeStopAPIUrl {
    return switch (this) {
      kmb => kmbRouteStopApi,
      ctb => ctbRouteStopApi,
      nib => nibRouteStopApi,
    };
  }

  String get stopEtaAPIUrl {
    return switch (this) {
      kmb => kmbStopEtaApi,
      ctb => ctbStopEtaApi,
      nib => nibStopEtaApi,
    };
  }

  static const csdiBusRoutePolyLineApi =
      'https://api.csdi.gov.hk/apim/dataquery/api/?id=td_rcd_1638844988873_41214&layer=fb_route_line&limit=10&offset=0';

  static const kmbAllRouteApi =
      'https://data.etabus.gov.hk/v1/transport/kmb/route/';
  static const ctbAllRouteApi =
      'https://rt.data.gov.hk/v2/transport/citybus/route/ctb';
  static const nibbAllRouteApi =
      'https://rt.data.gov.hk/v2/transport/nlb/route.php';

  static const kmbRouteStopApi =
      'https://data.etabus.gov.hk/v1/transport/kmb/route-stop/';
  static const ctbRouteStopApi =
      'https://rt.data.gov.hk/v2/transport/citybus/route-stop/';
  static const nibRouteStopApi =
      'https://rt.data.gov.hk/v2/transport/nlb/stop.php';

  static const kmbBusStopApi =
      'https://data.etabus.gov.hk/v1/transport/kmb/stop';

  static const kmbStopEtaApi =
      'https://data.etabus.gov.hk/v1/transport/kmb/eta/';
  static const ctbStopEtaApi =
      'https://rt.data.gov.hk/v2/transport/citybus/eta/';
  static const nibStopEtaApi =
      'https://rt.data.gov.hk/v2/transport/nlb/stop.php';
  // static const ctbBusStopApi =
  //     'https://rt.data.gov.hk/v2/transport/citybus/route-stop/{company_id}/{route}/{direction/';
  // static const nibBusStopApi =
  //     'https://data.etabus.gov.hk/v1/transport/nlb/route-stop/';
}
