import 'claseStory.dart';

class HistoriasDestino {
  List<Story> _historias = [
    Story(
        storyTitle:
            'Es un día soleado, pero oíste en el reportaje que iba a llover y tienes que ir a trabajar ¿Qué haces?',
        choice1: 'Llevas paraguas y haces caso a los expertos',
        choice2: 'consideras que fue un error y te vas así'),
    Story(
        storyTitle:
            'Excelente a mitad de camino comenzo a llover, ahora un señor te pide la hora',
        choice1: 'Se la das',
        choice2: 'Sales corriendo porque piensas que es un ladrón'),
    Story(
        storyTitle:
            'Hazle caso a los expertos, estas empapado, ¿Ahora que haces?',
        choice1:
            'Te regresas y te cambias, pero llegas tarde al trabajo con amonestación severa.',
        choice2: 'sigues y te quedas empapado.'),
    Story(
        storyTitle: 'Pues que mal si era un ladón y te robo y te mato',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Que buena intuición tienes, llegas a tu trabajo tamprano, y con hambre ¿Qué Haces?',
        choice1: 'Vas a la tienda más cercana y comes algo',
        choice2: 'Esperas a que tu amigo llegue y te brinde algo'),
    Story(
        storyTitle:
            'Te cambias pero tu jefe ya no cree en tus excusas y te despide y ¿Ahora?',
        choice1: 'Te deprimes y te echas al abandono',
        choice2: 'Persistes mejoras y consigues otro trabajo'),
    Story(
        storyTitle: 'Oh, al día siguiente te enfermas de gravedad',
        choice1: 'vas al medico',
        choice2: 'te quedas en casa con remedios caseros'),
    Story(storyTitle: 'Eres atropellado', choice1: 'Restart', choice2: ''),
    Story(storyTitle: 'Tu amigo no llega Fin', choice1: 'Restart', choice2: ''),
    Story(storyTitle: '9 Fin', choice1: 'Restart', choice2: ''),
    Story(storyTitle: '10 Fin', choice1: 'Restart', choice2: ''),
    Story(storyTitle: '11 Fin', choice1: 'Restart', choice2: ''),
    Story(storyTitle: '12 Fin', choice1: 'Restart', choice2: ''),
  ];

  String retornoDeTitulo() {
    return _historias[_storyNumber].storyTitle;
  }

  String retornoDeChoice1() {
    return _historias[_storyNumber].choice1;
  }

  String retornoDeChoice2() {
    return _historias[_storyNumber].choice2;
  }

  void nuevoTexto(int eleccion) {
    if (_storyNumber == 0 && eleccion == 1)
      _storyNumber = 1;
    else if (_storyNumber == 0 && eleccion == 2)
      _storyNumber = 2;
    else if (_storyNumber == 1 && eleccion == 1)
      _storyNumber = 3;
    else if (_storyNumber == 1 && eleccion == 2)
      _storyNumber = 4;
    else if (_storyNumber == 2 && eleccion == 1)
      _storyNumber = 5;
    else if (_storyNumber == 2 && eleccion == 2)
      _storyNumber = 6;
    else if (_storyNumber == 4 && eleccion == 1)
      _storyNumber = 7;
    else if (_storyNumber == 4 && eleccion == 2)
      _storyNumber = 8;
    else if (_storyNumber == 5 && eleccion == 1)
      _storyNumber = 9;
    else if (_storyNumber == 5 && eleccion == 2)
      _storyNumber = 10;
    else if (_storyNumber == 6 && eleccion == 1)
      _storyNumber = 11;
    else if (_storyNumber == 6 && eleccion == 2)
      _storyNumber = 12;
    else if (_storyNumber == 3 ||
        _storyNumber == 7 ||
        _storyNumber == 8 ||
        _storyNumber == 9 ||
        _storyNumber == 10 ||
        _storyNumber == 11 ||
        _storyNumber == 12) {
      _storyNumber = 0;
    }
  }

  bool visibilidad() {
    if (_storyNumber == 3 ||
        _storyNumber == 7 ||
        _storyNumber == 8 ||
        _storyNumber == 9 ||
        _storyNumber == 10 ||
        _storyNumber == 11 ||
        _storyNumber == 12)
      return false;
    else
      return true;
  }
}

int _storyNumber = 0;
