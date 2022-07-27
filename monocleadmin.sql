-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 27, 2022 at 06:06 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monocleadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `avantgarde`
--

DROP TABLE IF EXISTS `avantgarde`;
CREATE TABLE IF NOT EXISTS `avantgarde` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `avantgarde`
--

INSERT INTO `avantgarde` (`id`, `titulo`, `cuerpo`) VALUES
(10, 'Los mejores memes del Día Internacional del Diseño Gráfico.', 'Hoy 27 de abril se celebra el Día Internacional del Diseño Gráfico o el Día Mundial del Diseño de la Comunicación. Con esto, se ha buscado darle mayor visibilidad al trabajo que representa el diseño y también señalar y criticar las condiciones laborales dentro de la profesión alrededor del mundo.\r\n\r\nLa conmemoración adquirió un alcance internacional en 1995 gracias a un acuerdo entre el Consejo Internacional de Asociaciones de Diseño Gráfico (Icograda) y la Organización de Naciones Unidas (ONU); no obstante, Icograda desde 1991 había planteado el 27 de abril como la fecha a conmemorar debido a que ese mismo día celebra su fundación.\r\n\r\n'),
(11, '¿Qué es el diseño gráfico?', 'De acuerdo a algunas universidades mexicanas donde se imparte esta carrera, un diseñador gráfico se dedica a transmitir mensajes apoyándose de herramientas visuales. Es por eso que gran parte de sus planes de estudio se dedican a introducirse dentro de la historia del arte, técnicas de impresión, técnicas de representación, semiología o semiótica, publicidad y mercadotecnia.\r\n\r\nDe acuerdo a la Encuesta Nacional de Ocupación y Empleo del Instituto Nacional de Estadística y Geografía (INEGI), actualmente 332 instituciones de educación superior imparten Diseño Gráfico en México y se tiene contabilizados 42 mil 987 estudiantes activos en la licenciatura en todo el país.\r\n\r\nEn promedio, esta licenciatura tiene una duración de 9 semestres y los costos varían entre instituciones públicas y privadas. En la primera, la carrera puede llegar a costar 38 mil 616 pesos; mientras que en la segunda, 508 mil 416 pesos.\r\n\r\nhttps://www.infobae.com/new-resizer/nUDjYNT9hyNIRZLjLXC3Sfueyl8=/768x768/filters:format(webp):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/MKFY6MBJOVF2JG4QGYQMSLH3M4.jpg'),
(12, '¿Piensas estudiar diseño gráfico? Conoce las áreas donde puedes desempeñarte', 'Tras la llegada de la pandemia, el diseño gráfico se convirtió en la categoría con mayor demanda en el mercado peruano. Según un estudio de la plataforma Workana, esta profesión lideró el ranking en el último año, alcanzando más de la tercera parte del total de búsquedas realizadas. Para Oscar Mas, director de las carreras de Diseño de la Universidad de Ciencias y Artes de América Latina (UCAL), esta especialidad tiene un amplio campo de acción en nuestro país.\r\n\r\n“Un diseñador es considerado como una de las piezas fundamentales de una empresa porque gracias a su visión innovadora y estratégica facilita la articulación de las necesidades de la empresa con las del público para ofrecer soluciones creativas, que permitan acercarse más a los clientes, y así generar oportunidades de negocio”, detalla el especialista de UCAL.\r\n\r\nSegún el Portal Ponte en Carrera, los profesionales de diseño egresados pueden llegar a generar ingresos entre los S/ 1,000 a S/ 4,100 soles, convirtiéndose en una de las carreras con mayor demanda en el mercado laboral. Por ello, en el marco del Día Internacional del Diseño, compartimos las principales áreas en las que se puede desempeñar un profesional de esta carrera:\r\n\r\nDiseño de marcas. Consiste en crear, rejuvenecer o construir una marca, y desarrollar todos los elementos propios y únicos que la identifican. El objetivo que persigue es relevar el valor de la empresa de cara a sus clientes y públicos de interés, a través de una marca con la cual se relacionan.\r\nDiseño y animación. Hace referencia a la creación de series, personajes animados en dos o tres dimensiones, películas de corta o larga duración, presentaciones o narrativas audiovisuales las cuales circulan en diversas plataformas y en múltiples formatos.\r\nDiseño editorial. Un diseñador puede apuntar sus competencias y habilidades creativas a medios de comunicación, editoriales o empresas que generen contenidos informativos y requieran de la creación de contenido visual como infografías, gráficas, revistas, etc. Esta área ha migrado, en parte, al mundo digital por lo que dichas competencias pueden ser perfectamente aplicadas a diversos soportes.\r\nDiseño de empaques. Consiste en la creación de empaques o envases no solo de productos, sino de servicios que, cumplen con la funcionalidad propia del envase, como proteger, conservar, sino que además, cumplen el rol de comunicar visualmente algún atributo diferencial que logre persuadir a los usuarios para su compra.\r\nDiseño de señalética. En este rubro los diseñadores se encargan de sintetizar la información e indicación para configurarla creativamente a través del empleo de los principios del diseño como el contraste, el ritmo, la estructura, entre otros, haciendo uso del color, ubicándola en espacios públicos, parques de juegos, centros de compra u otros establecimientos, con la finalidad de orientar a las personas.\r\nDiseño de juegos. Consiste en aplicar el proceso y los principios de diseño al desarrollo de juegos de mesa o juguetes en diversos materiales, aplicando tecnologías de fabricación digital para el prototipado de los mismos.'),
(13, 'Cómo crear un negocio de US$1.000 mlls. a los 40 años', 'iajó desde Perth, en Australia, a Palo Alto en California, Estados Unidos, para reunirse con el empresario Bill Tai.\r\n\r\n\r\nMelanie había leído que si quieres impresionar a alguien, debes imitar su lenguaje corporal. Entonces se le ocurrió que pondría en práctica la teoría al momento de conseguir financiamiento para un sitio web de diseño gráfico.\r\n\r\n\"Fue bastante divertido\", cuenta Melanie, que ahora tiene 30 años. \"Él estaba sentado frente a mí, con su brazo detrás de la silla, comiendo su almuerzo\".\r\n\r\n\"Entonces yo también me senté con el brazo detrás de la silla, tratando de comer mi almuerzo, mientras pasaba las páginas de mi exposición para venderle el futuro de la industria editorial\".\r\nLa idea de Melanie para \"el futuro de la industria editorial\" era una plataforma en línea con el objetivo de facilitar que cualquier persona pueda hacer fácilmente sus diseños, desde tarjetas de felicitación, a calendarios o sitios web.\r\n\r\nEl empresario no se dio cuenta de que ella estaba imitándolo y tampoco pareció interesarle su idea de negocio.\r\n\r\n\"Pensé que no le gustaba mi propuesta porque estuvo al teléfono todo el tiempo\", cuenta.\r\n\r\nTodo lo contrario. El empresario quedó tan impresionado que la puso en contacto con una red de inversionistas, ingenieros y desarrolladores en Silicon Valley. Y finalmente, él mismo invirtió en el proyecto.\r\n\r\nHoy, el negocio de Melanie (con sede en Sidney) tiene un valor estimado de US$1.000 millones, luego que consiguiera nuevos fondos en la última ronda de inversión esta semana.\r\n\r\n'),
(14, 'CANVA', 'La empresa tiene 10 millones de usuarios en 179 países y cada segundo se crean 10 diseños en su plataforma web.\r\n\r\nNo está nada mal para un negocio que tuvo su génesis en la sala de la casa de su madre en Perth.\r\n\r\nMelanie tenía 19 años y estudiaba comercio y comunicaciones en la Universidad del Oeste de Australia en 2006.\r\n\r\nEn esa época se sentía frustrada porque le tomaba mucho tiempo aprender cómo utilizar los principales programas de diseño.\r\n\r\n\"Te podía tomar todo un semestre aprender lo básico\", cuenta. \"Incluso las tareas más fáciles, como exportar un archivo PDF de alta calidad, podía requerir 22 clics\".\r\n\r\nMientras la mayoría de nosotros nos quejaríamos de esta situación, Melanie vio una oportunidad de negocio.\r\n\r\nEn ese momento decidió intentar lanzar un sitio web de diseño que fuera fácil de usar.\r\n\r\n\"Me di cuenta de que en el futuro todo sería en línea y colaborativo, y mucho, mucho más simple\".\r\n\r\nPara poner a prueba su negocio, fundó junto a su novio, Chris Obrecht, un sitio para que los estudiantes diseñaran sus propios libros de fin de año y lo llamaron Fusion Books.\r\n\r\nFinalmente, una versión prototipo de esa iniciativa se convirtió en Canva System, el proyecto que juntos iniciaron en la casa de su madre, con dinero prestado de parientes para poder pagarles a los diseñadores del software.\r\n\r\nEn los años siguientes, Fusion Books creció y se convirtió en la mayor editorial de anuarios, antes de expandirse a Francia y Nueva Zelandia.\r\n\r\nEl negocio era tan exitoso que Melanie decidió dejar la universidad para dedicarse a tiempo completo a su compañía.\r\n\r\nEL IMPACTO DE SILICON VALLEY\r\n\r\nAl darse cuenta de que Fusion Books podía editar más que anuarios, viajó a California en 2010 para proponer la idea de Canva a inversionistas, y fue en ese viaje que se reunió con Bill Tai.\r\n\r\nPerkins dice que estar en Silicon Valley supuso un impacto cultural para ella, debido a lo que señala como una gran diferencia en las maneras en que lo estadounidenses y los australianos se auto promocionan.\r\n\r\n\"En Australia, la gente no destaca sus logros\", dice. \"En Silicon Valley, donde están tratando de recabar fondos para contratar a un equipo de ingenieros, tienes que ser capaz de hablar de tus logros\".\r\n\r\nQuizá en parte por el choque cultural, a Perkins le tomó tres años conseguir inversiones de Silicon Valley. Pero en 2013, Canva salió al mercado, con un capital de US$3 millones y con el exejecutivo de Google, Cameron Adams, uniéndose al equipo con Perkins y su novio Chris. La empresaria dice que valió la pena la espera.\r\n\r\n\"Fue un periodo de tiempo increíblemente largo y recibimos cientos de rechazos en el camino\". \"Pero creo que ese proceso fue de mucha ayuda para nosotros, porque significó que tuvimos que afinar nuestra propuesta y definir bien nuestra estrategia antes de empezar. Así que cuando conseguimos inversión fuimos capaces de operar de forma rápida y efectiva\".'),
(15, '“El lenguaje visual es tan importante como el escrito”', 'Hablamos con David Carson de diseño y de la polémica que desatan sus diseños irreverentes. También del  por qué algunos admiran su genialidad con devoción y de los otros que se dedican a criticar negativamente su trabajo calificándolo de \"desordenado e ilegible\".\r\n\r\nEl comunicador visual estadounidense, ganador de 230 premios incluido el de Diseñador Gráfico más famoso del planeta por la London Creative Review Magazine en el 2014, estuvo en Lima recientemente en el marco del evento “New Design”, organizado por la Universidad de Ciencias y Artes de Lima (UCAL).\r\n\r\n¿Es surfer y diseñador… pero también antropólogo?\r\n\r\nSociólogo, mi grado es en sociología. Eso significa que tiene que ver con antropología, economía. Sociología abarca más.\r\n\r\n¿Cómo crees que te ayudó esa carrera para hacer tu trabajo como diseñador?\r\n\r\nLa sociología me arrastró al diseño gráfico. Haciendo trabajo gráfico editorial y revistas, me ayudó a interpretar a gente y situaciones reales. Prefiero hacer esto, que hacer una caja o paquete de crema dental. No  tengo una educación formal en diseño editorial, hago lo que tiene sentido para mí. Lo he dicho muchas veces, yo nunca aprendí que es lo que no debería hacer. El cliente puede sugerir lo que quiere, pero a la hora de iniciar un proyecto no tengo sus voces en mi espalda diciéndome: “estás rompiendo las reglas de diseño o no hagas eso, esto es mal”. El no tener una educación formal fue una ventaja y no quiere decir que no estoy de acuerdo con ella. Asistí a talleres, conferencias y ser practicante me ayudó mucho, aprendes más en el trabajo, en la práctica. El diseño fue una segunda carrera a la cual llegué gracias a la sociología.\r\n\r\nTus críticos siempre hablan sobre la informalidad en tu trabajo. ¿Qué les dirías al respecto?\r\n\r\nGracias a esos comentarios, estamos hablando ahora. Mi trabajo es personalizado, subjetivo, es más intuitivo, es mi personalidad en el trabajo. Por ese motivo cuando la gente lo ve, tiene más aceptación que si sólo utilizara un programa de diseño para hacerlo. La gente que estudió formalmente dice: “no puedes hacer eso, no puedes hacer esto”. Pero otras personas se levantan y se llevan las revistas, los posters y libros que diseño. Y dicen: “me gustaría hacer algo como esto”. En el área diseño actúan otros factores como emociones, son subjetivas y se relacionan con el aspecto personal, la razón es la audiencia, no tiene que ser aburrido.\r\n\r\n¿Tienes alguna habilidad especial con la computadora?\r\n\r\nMuy básico, la computadora no hace a un buen diseñador, si no tienes la visión, la computadora no te la brinda. Agiliza mi trabajo y la utilizo para lo básico.\r\n\r\n¿Cuáles son tus programas favoritos?\r\n\r\nEl que más utilizo es QuarkXpress, para mi es el mejor para el diseño editorial, me permite copiar y pegar, asegurar lo que estoy pensando cada vez que modifico una idea. El punto es que me permite tomar decisiones básicas para hacer un diseño, como cortar imágenes, manipular fuentes, no tienen que ver con utilizar el último Photoshop, 3d, Morphin. No quiere decir que el tenga el programa de software más actualizado va a ser el mejor, si no tienes ese “feeling” para tratar de romper lo clásico, al final todo el mundo hace lo mismo, ¿porque voy seguir el mismo estilo? No quiero ser parte de ese grupo, si no tienes esa visión externa, no vas a salir fuera de lo común');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(7, 'flavia', '81dc9bdb52d04dc20036dbd8313ed055'),
(8, 'e', 'e1671797c52e15f763380b45e841ec32'),
(5, 'edu', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
