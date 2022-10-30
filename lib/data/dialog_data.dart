import 'package:galatrix/world/dialogue.dart';
import 'package:galatrix/world/sfx/explosion.dart';
import 'package:galatrix/world/sfx/galatrix_young.dart';

enum Location {
  isleOfDarkSouls,
  frozenMountain,
  valleyOfFortune,
  steppesOfSuffering
}

enum Character { galatrix, galatrix2, orenda, nakoa }

List<Dialogue> dialogues = [
  Dialogue(
      Location.isleOfDarkSouls,
      Character.galatrix,
      'My name is Galatrix. I am alone. '
      'We\'ve met before, long ago, when we were children. '
      'You may not remember me, but I remember you.  The children in the palace were, '
      'afraid of me, everyone except you, Nakoa. '
      'We were friends then. You helped me.  Can you help me again?'),
  Dialogue(
      Location.isleOfDarkSouls,
      Character.galatrix,
      'There is a montrous power inside me. It is wild and difficult to control. '
      'I destroyed several rooms in the palace and am now imprisoned in a castle '
      'on the Isle of Dark Souls. '
      'In my loneliness, I meditated and learned to calm the demons inside my mind.')
    ..specialEffect = Explosion(),

  Dialogue(
      Location.valleyOfFortune,
      Character.nakoa,
      'L3N Galatrix, I remember you. I remember a connection. I still feel it. '
      'When you disappeared, I felt lost, like a part of my destiny '
      'was broken. I have a ship.  How can I find you?')
    ..specialEffect = GalatrixYoung(),
  Dialogue(
      Location.isleOfDarkSouls,
      Character.galatrix,
      'L4G There is a map to the Isles of Dark Souls where '
      'I am marooned. Before I was captured, I hid the map in my childhood '
      'playroom in the secret brick alcove we used long ago.'),
  Dialogue(
      Location.frozenMountain,
      Character.orenda,
      'L5O I am Orenda, pursued and hunted by the people that fear me. '
      'I have my home in the mountains, once green and lush, now cold and barren. '
      'My powers drained the area of warmth and now it is called, Frozen Mountain'),
  Dialogue(
      Location.frozenMountain,
      Character.orenda,
      'L6O Galatrix, do not search for me. It is safer for everyone if I stay here alone. '
      'The power inside me is wild and intoxicating. I did\'nt just lose control, '
      'I didn\'t want to contain the power. For a brief moment, I felt free, then '
      'everything around me was destroyed.'),

  Dialogue(
      Location.isleOfDarkSouls,
      Character.galatrix,
      'L7G Orenda, Nakoa and I will find you. The 3 of us are tied together by destiny. '
      'Together, we will save each other. '
      'I will never abandon you. '),
  Dialogue(Location.isleOfDarkSouls, Character.nakoa,
      'L8N Galatrix, I found you.  Let\'s leave in my ship and find Orenda.'),

  Dialogue(
      Location.steppesOfSuffering,
      Character.galatrix,
      'L9G She is high up in those mountains ahead.  I can feel her power and '
      'loneliness.  She is struggling. I know she can learn to control her '
      'power.'),
  Dialogue(
      Location.steppesOfSuffering,
      Character.nakoa,
      'L10N Galatrix, she may destroy us all.  She destroyed a village. '
      'She can live in the mountains in peace.  You and I can go to the Valley of Fortune. '
      'Marry me and let\'s search for peace.  I\'ve loved you since when I first met you '
      'as a child.'),
  Dialogue(
    Location.steppesOfSuffering,
    Character.galatrix2,
    '11G Nakoa, I cannot abandon Orenda.  I am all she has.  I will find her and we '
    'will meet you in the Valley of Fortune.  Wait for me there.  We can marry soon '
    'after Orenda and I return.',
  ),

  // 'L1S12',
  // 'L1S13',
  // 'L1S14',
  // 'L1S15',
  // 'L1S16',
  // 'L1S17',
  // 'L1S18',
  // 'L1S19',
  // 'L1S20',
];
