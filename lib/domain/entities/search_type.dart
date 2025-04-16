enum TransportMode {
  all,
  bus,
  miniBus,
  mtr,
  lightRail,
  ferry;

  String get displayName {
    return switch (this) {
      all => '全部',
      bus => '巴士',
      miniBus => '小巴',
      mtr => '港鐵',
      lightRail => '輕鐵',
      ferry => '渡輪',
    };
  }

  String get boundName {
    return switch (this) {
      all => 'All',
      bus => 'Bus',
      miniBus => 'Mini Bus',
      mtr => 'MTR',
      lightRail => 'Light Rail',
      ferry => 'Ferry',
    };
  }

  Set<KeyboardCharacter> get characters {
    return switch (this) {
      all => {
        ...KeyboardCharacter.values,
        // ...List.generate(10, (index) => index.toString()),
      },
      TransportMode.bus => {
        KeyboardCharacter.A,
        KeyboardCharacter.E,
        KeyboardCharacter.H,
        KeyboardCharacter.K,
        KeyboardCharacter.N,
        KeyboardCharacter.P,
        KeyboardCharacter.R,
        KeyboardCharacter.S,
        KeyboardCharacter.T,
        KeyboardCharacter.W,
        KeyboardCharacter.X,
      },
      TransportMode.miniBus => {KeyboardCharacter.C, KeyboardCharacter.N},
      TransportMode.mtr => {
        KeyboardCharacter.A,
        KeyboardCharacter.D,
        KeyboardCharacter.E,
        KeyboardCharacter.I,
        KeyboardCharacter.K,
        KeyboardCharacter.S,
        KeyboardCharacter.T,
      },
      TransportMode.lightRail => {
        // ...List.generate(10, (index) => index.toString()),
      },
      TransportMode.ferry => {
        KeyboardCharacter.C,
        KeyboardCharacter.H,
        KeyboardCharacter.I,
        KeyboardCharacter.K,
        KeyboardCharacter.M,
        KeyboardCharacter.N,
      },
    };
  }

  Set<String> get modeCharacters {
    return switch (this) {
      all => {
        ...KeyboardCharacter.values.map((e) => e.name),
        ...List.generate(10, (index) => index.toString()),
      },
      bus => {
        ...List.generate(10, (index) => index.toString()),
        KeyboardCharacter.A.name,
        KeyboardCharacter.E.name,
        KeyboardCharacter.H.name,
        KeyboardCharacter.K.name,
        KeyboardCharacter.N.name,
        KeyboardCharacter.P.name,
        KeyboardCharacter.R.name,
        KeyboardCharacter.S.name,
        KeyboardCharacter.T.name,
        KeyboardCharacter.W.name,
        KeyboardCharacter.X.name,
      },
      miniBus => {
        ...List.generate(10, (index) => index.toString()),
        KeyboardCharacter.C.name,
        KeyboardCharacter.N.name,
      },
      lightRail => {
        // ...List.generate(10, (index) => index.toString()),
      },
      mtr => {
        KeyboardCharacter.A.name,
        KeyboardCharacter.D.name,
        KeyboardCharacter.E.name,
        KeyboardCharacter.I.name,
        KeyboardCharacter.K.name,
        KeyboardCharacter.S.name,
        KeyboardCharacter.T.name,
      },
      ferry => {
        ...List.generate(10, (index) => index.toString()),
        KeyboardCharacter.C.name,
        KeyboardCharacter.H.name,
        KeyboardCharacter.I.name,
        KeyboardCharacter.K.name,
        KeyboardCharacter.M.name,
        KeyboardCharacter.N.name,
      },
    };
  }
}

enum KeyboardCharacter { A, B, C, D, E, H, I, K, M, N, P, R, S, T, W, X }
