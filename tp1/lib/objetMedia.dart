import 'dart:collection';

import 'package:flutter/material.dart';

class ObjetMedia {
  final String title;
  final String description;
  final String imageUrl;

  ObjetMedia(this.title, this.description, this.imageUrl);
}

final films = [
  ObjetMedia("Avengers game", "Film d'action",
      'https://www.bing.com/th?id=AMMS_0785f61b3b764080c2076adadadd0eb5&w=180&h=270&c=7&rs=1&qlt=80&o=6&cdv=1&dpr=1.5&pid=16.1'),
  ObjetMedia(
      "Spider man",
      "Spider-Man: No Way Home, ou Spider-Man: Sans retour au Québec, est un film américain réalisé par Jon Watts, sorti en 2021. Il s'agit du 27ᵉ film de l'univers cinématographique Marvel et le quatrième de la phase IV",
      'https://www.bing.com/th?id=AMMS_b6ffaa89cbf1fadad21228a636394ea7&w=100&h=150&c=7&rs=1&qlt=80&pcl=f9f9f9&o=6&cdv=1&dpr=1.5&pid=16.1'),
  ObjetMedia(
      "Ponyo",
      "Un beau matin, alors que le petit Sosuke joue sur la plage, il découvre une petite fille poisson rouge coincée dans un bocal. Il la délivre et décide de la garder avec lui, sous le nom de Ponyo. Mais le père de Ponyo, qui s'avère être une princesse, la force à revenir avec lui dans les profondeurs",
      'https://www.bing.com/th?id=AMMS_0c392e9d28860e3479fd965530f7c51f&w=100&h=150&c=7&rs=1&qlt=80&pcl=f9f9f9&o=6&cdv=1&dpr=1.5&pid=16.1'),
  ObjetMedia(
      "Felix le tresor de morga",
      "Convaincu que son père disparu en mer deux ans plus tôt est toujours vivant, Félix, 12 ans, part à sa recherche en compagnie du vieux Tom, un marin à la retraite.",
      'https://www.bing.com/th?id=AMMS_44660c746fd34d726d24653cde3d4324&w=100&h=150&c=7&rs=1&qlt=80&pcl=f9f9f9&o=6&cdv=1&dpr=1.5&pid=16.1'),
  ObjetMedia(
      "The King's man",
      "Lorsque les pires tyrans et les plus grands génies criminels de l'Histoire se réunissent pour planifier l'élimination de millions d'innocents, un homme se lance dans une course contre la montre pour contrecarrer leurs plans.",
      'https://www.bing.com/th?id=AMMS_c35a7228415fdf490d37cc7c1b06955b&w=100&h=149&c=8&rs=1&o=5&dpr=1.5&pid=3.1&rm=2'),
];
final livres = [
  ObjetMedia(
      "Nouvelle Babel",
      "Jouant avec les codes du suspense, de la manipulation et du roman d'anticipation, Michel Bussi ne vous aura jamais autant fait voyager.",
      "https://static.fnac-static.com/multimedia/Images/FR/NR/3e/e7/d3/13887294/1540-1/tsp20211210072715/Nouvelle-Babel.jpg"),
  ObjetMedia(
      "Solo Leveling",
      "Lorsque d'étranges portails sont apparus aux quatre coins du monde, l'humanité a dû trouver une parade pour ne pas finir massacrée par les griffes des monstres des monstres qui en sortent.",
      "https://static.fnac-static.com/multimedia/Images/FR/NR/cb/59/d2/13785547/1540-1/tsp20211214070540/Solo-Leveling.jpg"),
  ObjetMedia(
      "Riz Jaune",
      "Salut les amis  !\nEmbarquez pour un voyage aux quatre coins de l’Asie avec votre chef particulier:Thai alias Le Riz Jaune.",
      "https://static.fnac-static.com/multimedia/Images/FR/NR/98/3e/d4/13909656/1540-1/tsp20220204060703/Le-riz-jaune.jpg"),
  ObjetMedia(
      "Le réveil",
      "Tom, un jeune ingénieur, se retrouve confronté dans son pays à une situation inquiétante qui sème la peur dans la population.\nDans ce contexte inédit, des mesures sont adoptées par le pouvoir, contraignantes et liberticides.",
      "https://static.fnac-static.com/multimedia/Images/FR/NR/f3/92/d5/13996787/1540-1/tsp20220202180212/Le-Reveil.jpg")
];

final saved = [];

final home = [
  ObjetMedia("PSG", "La statistique affolante de Icardi",
      "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AATm8Mm.img?h=768&w=1366&m=6&q=60&o=f&l=f&x=544&y=132"),
  ObjetMedia(
      "Barreau",
      "Il a passé 19 ans derrière les barreaux à la place de son frère jumeau",
      "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AATn21N.img?h=898&w=1350&m=6&q=60&o=f&l=f"),
  ObjetMedia(
      "Foot",
      "Mercato: Lille dit au revoir à Reinildo, qui rejoint l'Atlético",
      "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AATkYSp.img?h=959&w=1438&m=6&q=60&o=f&l=f&x=477&y=130")
];

/*final Map<String, List<ObjetMedia>> save = {
  {"Livres", []},
  {"Films", []}
} as HashMap<String, List<ObjetMedia>>;*/
