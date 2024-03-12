const Map<String, dynamic> rawJsonData = {
  'errors': <dynamic>[],
  'get': 'players/topscorers',
  'paging': {'current': 0, 'total': 1},
  'parameters': {'league': '39', 'season': '2020'},
  'response': [
    {
      'player': {
        'age': 28,
        'birth': {
          'country': 'England',
          'date': '1993-07-28',
          'place': 'London',
        },
        'firstname': 'Harry',
        'height': '188 cm',
        'id': 184,
        'injured': false,
        'lastname': 'Kane',
        'name': 'H. Kane',
        'nationality': 'England',
        'photo': 'https://media.api-sports.io/football/players/184.png',
        'weight': '86 kg',
      },
      'statistics': [
        {
          'cards': {'red': 0, 'yellow': 1, 'yellowred': 0},
          'dribbles': {'attempts': 71, 'past': null, 'success': 37},
          'duels': {'total': 369, 'won': 168},
          'fouls': {'committed': 24, 'drawn': 51},
          'games': {
            'appearences': 27,
            'captain': false,
            'lineups': 27,
            'minutes': 2367,
            'number': null,
            'position': 'Attacker',
            'rating': '7.677777',
          },
          'goals': {'assists': 13, 'conceded': 0, 'saves': null, 'total': 17},
          'league': {
            'country': 'England',
            'flag': 'https://media.api-sports.io/flags/gb.svg',
            'id': 39,
            'logo': 'https://media.api-sports.io/football/leagues/39.png',
            'name': 'Premier League',
            'season': 2020,
          },
          'passes': {'accuracy': 17, 'key': 40, 'total': 685},
          'penalty': {
            'commited': null,
            'missed': 0,
            'saved': null,
            'scored': 4,
            'won': null,
          },
          'shots': {'on': 38, 'total': 82},
          'substitutes': {'bench': 0, 'in': 0, 'out': 4},
          'tackles': {'blocks': 8, 'interceptions': 9, 'total': 18},
          'team': {
            'id': 47,
            'logo': 'https://media.api-sports.io/football/teams/47.png',
            'name': 'Tottenham',
          },
        }
      ],
    }
  ],
  'results': 1,
};
