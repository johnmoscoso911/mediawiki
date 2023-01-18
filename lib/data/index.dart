import 'dart:math';

import '../models/index.dart';

final List<Question> _allQuestions = [
  Question(
    '¿Cuál es la tería del Big Bang?',
    [
      Answer('Que como resultado de una gran explosión se crearon las galaxias',
          true),
      Answer('Que hubo un Dios que creó todo', false),
      Answer('Que dos partículas fueron evolucionando', false),
      Answer('Que la vida vino del espacio', false),
      Answer('Que una nube molecular creó el universo', false)
    ],
  ),
  Question(
    '¿Cuál es la fuerza gravitatoria?',
    [
      Answer('Es la fuerza que actúa sobre la masa y siempre es de atracción',
          true),
      Answer('Es la fuerza que determina el comportamiento con carga positiva',
          false),
      Answer('Es la fuerza que los mantiene unidos a los protones entre si',
          false),
      Answer(
          'Es la fuerza mas importante en desintegración radioactiva', false),
      Answer('Es la fuerza que mantiene a los planetas en rotación', false)
    ],
  ),
  Question(
    '¿Hace cuánto se formo el planeta Tierra?',
    [
      Answer('Hace 4600 millones de años', true),
      Answer('Hace 12 millones de años', false),
      Answer('Hace 7 millones de años', false),
      Answer('Hace 1950 millones de años', false),
      Answer('Hace 5500 millones de años', false)
    ],
  ),
  Question(
    '¿Comó era la atmósfera primitiva en la Tierra?',
    [
      Answer('Era radioactiva', false),
      Answer('Era caliente', false),
      Answer('Era fría', false),
      Answer('Era inavitable', true),
      Answer('No tenia atmósfera', false)
    ],
  ),
  Question(
    '¿Comó pensaban los egipcios que se creó la vida?',
    [
      Answer('Que la vida vino del río Nilo', true),
      Answer('Que Dios creó a los humanos', false),
      Answer('Que la vida venia del lodo', false),
      Answer('Que la vida vino del mar', false),
      Answer('Que la vida vino de unas moléculas órganicas', false)
    ],
  ),
  Question(
    '¿En qué consistía el experimento de Miller y Urey?',
    [
      Answer(
          'En ver las reacciones químicas que ocurrieron en la Tierra primitiva',
          true),
      Answer('En ver como se movían los átomos', false),
      Answer('En ver como morían las células', false),
      Answer('En ver como algunos gases afectaban a las células', false),
      Answer('En ver como se formaban las moleculas', false)
    ],
  ),
  Question(
    '¿Qué es la generación espontánea?',
    [
      Answer('En que la vida aparecia espontaneamente', true),
      Answer('Que la materia se transformaba en humano', false),
      Answer('Que cada partícula posee una fuerza vital que provoca la vida',
          false),
      Answer('Que un grupo de bacterias se unian y evolucionaban', false),
      Answer('Es la teoría que propone que la vida vino de un trozo de carne',
          false)
    ],
  ),
  Question(
    '¿Hace cuánto aparecieron las células eucariotas?',
    [
      Answer('Hace 1500 millones de años', true),
      Answer('Hace 1000 millones de años', false),
      Answer('Hace 65 millones de años', false),
      Answer('Hace 4600 millones de años', false),
      Answer('Hace 12000 millones de años', false)
    ],
  ),
  Question(
    '¿Qué forma tienen las células?',
    [
      Answer('esféricas y globulares', true),
      Answer('triangulares', false),
      Answer('globulares', false),
      Answer('circulares', false),
      Answer('cuadradas', false)
    ],
  ),
  Question(
    '¿Qué es la mitosis?',
    [
      Answer('Reproducción asexual de las células eucariotas', true),
      Answer('Reproducción de las bacterias', false),
      Answer('Reproducción de organismos', false),
      Answer('Reproducción sexual de las células eucariotas', false),
      Answer('Reproducción asexual de las células procariotas', false)
    ],
  ),
  Question(
    '¿Cuántos tipos de células se han encontrado en el cuerpo humano?',
    [
      Answer('200 tipos de células diferentes', true),
      Answer('1000 tipos de células diferentes', false),
      Answer('2000 tipos de células diferentes', false),
      Answer('50 tipos de células diferentes', false),
      Answer('20 tipos de células diferentes', false)
    ],
  ),
  Question(
    '¿Qué tamaño tienen las células?',
    [
      Answer('1-20 micrómetros', true),
      Answer('20-50 micrómetros', false),
      Answer('100 micrómetros', false),
      Answer('2 micras', false),
      Answer('0.0000005 centímetros', false)
    ],
  ),
  Question(
    '¿Qué es la membrana plasmática?',
    [
      Answer('Es una cubierta que envuelve a la célula', true),
      Answer('Es una capa celular', false),
      Answer('Es una capa de proteínas', false),
      Answer('Es una cubierta que envuelve a una bacteria', false),
      Answer('Es una capa de proteínas', false)
    ],
  ),
  Question(
    '¿Cuál es una de las funciones de la membrana plasmática?',
    [
      Answer('División en compartimentos', true),
      Answer('Transporte de globulos blancos', false),
      Answer('Transporte de proteínas', false),
      Answer('Transporte de plaquetas', false),
      Answer('División de nutrientes', false)
    ],
  ),
  Question(
    '¿De qué esta formada la membrana plasmática?',
    [
      Answer('Formada por dos capas lipídicas de fosfolípidos', true),
      Answer('Formada por dos capas de proteína y azufre', false),
      Answer('Formada por grasa', false),
      Answer('Formada por plasma', false),
      Answer('Formada por medio extracelular', false)
    ],
  ),
  Question(
    '¿Qué es el núcleo celular?',
    [
      Answer('Es el centro de control de la célula eucariota', true),
      Answer('Es el productor de citoplasma', false),
      Answer('Es el sintetizador de proteínas', false),
      Answer('Es el centro de la celula procariota', false),
      Answer('Centro de control de una bacteria', false)
    ],
  ),
  Question(
    '¿Función del núcleo celular?',
    [
      Answer('Almacenar información genética del ADN', true),
      Answer('Crear ADN', false),
      Answer('Envoltura nuclear', false),
      Answer('Transferir información del ARNm al ADN', false),
      Answer('Almacenar información génetica del citoplasma', false)
    ],
  ),
  Question(
    '¿Cual es la función del citoplasma?',
    [
      Answer('Permite movilidad de los orgánulos', true),
      Answer('Generar plasma', false),
      Answer('Regular la cantidad de proteína', false),
      Answer('Generar proteínas', false),
      Answer('Generar cromosomas', false)
    ],
  ),
  Question(
    '¿Función de los ribosomas?',
    [
      Answer('Sintetizar proteínas', true),
      Answer('Sintetizar glucosa', false),
      Answer('Sintetizar lípidos', false),
      Answer('Sintetiza el H2O', false),
      Answer('Sintetiza citoplasma', false)
    ],
  ),
  Question(
    '¿Cuál es la función del Aparato de Golgi?',
    [
      Answer('Transportar moléculas', true),
      Answer('Transportar agua', false),
      Answer('Transportar grasa', false),
      Answer('Transportar oxígeno', false),
      Answer('Transportar citoplasma', false)
    ],
  ),
  Question(
    '¿Cuál es la función de los lisosomas?',
    [
      Answer('Digerir alimentos', true),
      Answer('Almacenar sustancias', false),
      Answer('Respirar', false),
      Answer('Sintetiza lípidos', false),
      Answer('Modifica la célula', false)
    ],
  ),
  Question(
    '¿Cuál es la función de la vacuola?',
    [
      Answer('Almacena sustancias', true),
      Answer('Respirar', false),
      Answer('Crea el citoplasma', false),
      Answer('Transporta los cromosomas', false),
      Answer('Crea ADN', false)
    ],
  ),
  Question(
    '¿Cuál es la función de las mitocondrias?',
    [
      Answer('Se lleva a cabo la respiración', true),
      Answer('Se lleva a cabo la formacion de organelos', false),
      Answer('Se lleva a cabo la digestión', false),
      Answer('Se lleva a cabo la sintesis', false),
      Answer('Se lleva a cabo el transporte', false)
    ],
  ),
  Question(
    '¿Qué función tiene el citoesqueleto?',
    [
      Answer('Movimiento y sostén de la célula', true),
      Answer('Movimiento', false),
      Answer('Protector', false),
      Answer('Destructora de células', false),
      Answer('Forma el citoplasma', false)
    ],
  ),
  Question(
    '¿Qué es la ley del uso y del desuso?',
    [
      Answer('Que si una parte del cuerpo se usa ucho se desarrolla mas', true),
      Answer(
          'Que los progenitores heredan su cuerpo a los desendientes', false),
      Answer('Que el cuerpo no usa todos los órganos', false),
      Answer(
          'Que si usas una parte del cuerpo mucho se hace mas grande', false),
      Answer('Que si no usas una parte del cuerpo deja de funcionar', false)
    ],
  ),
  Question(
    '¿Quién creo el sistema para nombrar las especies?',
    [
      Answer('Carl Von Linneo', true),
      Answer('Georges Cuvier', false),
      Answer('Conde de Buffon', false),
      Answer('Tomas Malthus', false),
      Answer('Jorge de Cuvier', false)
    ],
  ),
  Question(
    '¿Quién propuso la ley del uso y desuso?',
    [
      Answer('Lamarck', true),
      Answer('Lamar', false),
      Answer('Llamarck', false),
      Answer('Lamark', false),
      Answer('Leamarck', false)
    ],
  ),
  Question(
    '¿Qué propuso Charles Darwin?',
    [
      Answer('Que las especies evolucionan', true),
      Answer('Que las especie mas debil evolucionaba', false),
      Answer('Que la especie venia de otra especie', false),
      Answer('Que todas las especies vienen de Ecuador', false),
      Answer('Que el mas fuerte sobrevivía', false)
    ],
  ),
  Question(
    '¿Para que se usa el carbono 14?',
    [
      Answer('Para estimar la edad de los fósiles', true),
      Answer('Para conservar los fósiles', false),
      Answer('Para extraer los fósiles', false),
      Answer('Para comprobar que especie era el fósil', false),
      Answer('Para disolver un fósil', false)
    ],
  ),
  Question(
    '¿Qué es el efecto cuello de botella?',
    [
      Answer('Cuando el tamaño se reduce durante un mes', true),
      Answer('Reducción de genética', false),
      Answer('Reducción de variacion genética', false),
      Answer('Reducción de habilidades de una especie', false),
      Answer('Reducción de vida de una especie', false)
    ],
  ),
];

List<Question> nextQuestions() {
  var random = Random();
  List<Question> list = [];
  int index = 0;
  while (index < 7) {
    int elementAt = random.nextInt(_allQuestions.length - 1);
    Question question = _allQuestions.elementAt(elementAt);
    if (!list.contains(question)) {
      question.answers.shuffle();
      list.add(question);
      index++;
    }
  }
  return list;
}
