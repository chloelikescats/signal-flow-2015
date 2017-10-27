(
SynthDef.new(\lilbyte, {
  arg freq=440, amp= 1;
  var sig, env;
  sig = SinOsc.ar(freq);
  env = EnvGen.kr(Env.new([1, 0], [1, 0]), doneAction:
  2);
  sig = sig * (env / 5);
  Out.ar(0, sig);
}
).add;
)

NetAddr.localAddr

(
OSCdef(\listen_a, {
  //A 01000001
  (
  a = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 440, 440, 440, 880], 1).trace,
  ).play;
  )
}
, "/play_a");
)


(
OSCdef(\listen_b, {
  //B 01000010
  (
  b = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 440, 440, 880, 440], 1).trace,

  ).play;
  )
}
, "/play_b");
)


(
OSCdef(\listen_c, {
  //C 01000011
  (
  c = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 440, 440, 880, 880], 1).trace,

  ).play;
  )
}
, "/play_c");
)


(
OSCdef(\listen_d, {
  //D 01000100
  (
  d = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 440, 880, 440, 440], 1).trace,

  ).play;
  )
}
, "/play_d");
)


(
OSCdef(\listen_e, {
  //E 01000101
  (
  e = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([330, 660, 330, 330, 330, 660, 330, 660], 1).trace,

  ).play;
  )
}
, "/play_e");
)


(
OSCdef(\listen_f, {
  //F 01000110
  (
  f = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 440, 880, 880, 440], 1).trace,

  ).play;
  )
}
, "/play_f");
)


(
OSCdef(\listen_g, {
  //G 01000111
  (
  g = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 440, 880, 880, 880], 1).trace,

  ).play;
  )
}
, "/play_g");
)


(
OSCdef(\listen_h, {
  //H 01001000
  (
  h = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 880, 440, 440, 440], 1).trace,

  ).play;
  )
}
, "/play_h");
)


(
OSCdef(\listen_i, {
  //I 01001001
  (
  i = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 880, 440, 440, 880], 1).trace,

  ).play;
  )
}
, "/play_i");
)


(
OSCdef(\listen_j, {
  //J 01001010
  (
  j = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 880, 440, 880, 440], 1).trace,

  ).play;
  )
}
, "/play_j");
)


(
OSCdef(\listen_k, {
  //K 01001011
  (
  k = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 880, 440, 880, 880], 1).trace,

  ).play;
  )
}
, "/play_k");
)


(
OSCdef(\listen_l, {
  //L 01001100
  (
  l = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 880, 880, 440, 440], 1).trace,

  ).play;
  )
}
, "/play_l");
)


(
OSCdef(\listen_m, {
  //M 01101101
  (
  m = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 880, 440, 880, 880, 440, 880], 1).trace,

  ).play;
  )
}
, "/play_m");
)


(
OSCdef(\listen_n, {
  //N 01001110
  (
  n = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 880, 880, 880, 440], 1).trace,

  ).play;
  )
}
, "/play_n");
)


(
OSCdef(\listen_o, {
  //O 01001111
  (
  o = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 880, 880, 880, 880], 1).trace,

  ).play;
  )
}
, "/play_o");
)


(
OSCdef(\listen_p, {
  //P 01010000
  (
  p = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 880, 440, 440, 440, 440], 1).trace,

  ).play;
  )
}
, "/play_p");
)


(
OSCdef(\listen_q, {
  //Q 01010001
  (
  q = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 880, 440, 440, 440, 880], 1).trace,

  ).play;
  )
}
, "/play_q");
)


(
OSCdef(\listen_r, {
  //R 01010010
  (
  r = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 880, 440, 440, 880, 440], 1).trace,

  ).play;
  )
}
, "/play_r");
)


(
OSCdef(\listen_s, {
  //S 01010011
  (
  s = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 880, 440, 440, 880, 880], 1).trace,

  ).play;
  )
}
, "/play_s");
)

(
OSCdef(\listen_t, {
  //T 01010100
  (
  t = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 880, 440, 880, 440, 440], 1).trace,

  ).play;
  )
}
, "/play_t");
)


(
OSCdef(\listen_u, {
  //U 01010101
  (
  u = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 880, 440, 880, 440, 880], 1).trace,

  ).play;
  )
}
, "/play_u");
)


(
OSCdef(\listen_v, {
  //V 01010110
  (
  v = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 880, 440, 880, 880, 440], 1).trace,

  ).play;
  )
}
, "/play_v");
)


(
OSCdef(\listen_w, {
  //W 01010111
  (
  w = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 880, 440, 880, 880, 880], 1).trace,

  ).play;
  )
}
, "/play_w");
)

(
OSCdef(\listen_x, {
  //X 01011000
  (
  x = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 880, 880, 440, 440, 440], 1).trace,

  ).play;
  )
}
, "/play_x");
)

(
OSCdef(\listen_y, {
  //Y 01011001
  (
  y = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 880, 880, 440, 440, 880], 1).trace,

  ).play;
  )
}
, "/play_y");
)

(
OSCdef(\listen_z, {
  //Z 01011010
  (
  z = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 880, 880, 440, 880, 440], 1).trace,

  ).play;
  )
}
, "/play_z");
)

(
OSCdef(\listen_aa, {
  //1 00110001
  (
  a = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 440, 880, 880, 440, 440, 440, 880], 1).trace,

  ).play;
  )
}
, "/play_aa");
)

(
OSCdef(\listen_bb, {
  //2 00110010
  (
  b = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 440, 880, 880, 440, 440, 880, 440], 1).trace,

  ).play;
  )
}
, "/play_bb");
)

(
OSCdef(\listen_cc, {
  //3 00110011
  (
  c = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 440, 880, 880, 440, 440, 880, 880], 1).trace,

  ).play;
  )
}
, "/play_cc");
)

(
OSCdef(\listen_dd, {
  //4 00110100
  (
  d = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 440, 880, 880, 440, 880, 440, 440], 1).trace,

  ).play;
  )
}
, "/play_dd");
)

(
OSCdef(\listen_ee, {
  //5 00110101
  (
  e = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 440, 880, 880, 440, 880, 440, 880], 1).trace,

  ).play;
  )
}
, "/play_ee");
)

(
OSCdef(\listen_ff, {
  //6 00110110
  (
  f = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 440, 440, 440, 880, 440, 440], 1).trace,

  ).play;
  )
}
, "/play_ff");
)

(
OSCdef(\listen_gg, {
  //7 00110111
  (
  g = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 440, 880, 880, 440, 880, 880, 880], 1).trace,

  ).play;
  )
}
, "/play_gg");
)

(
OSCdef(\listen_hh, {
  //8 00111000
  (
  h = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 440, 880, 880, 880, 440, 440, 440], 1).trace,

  ).play;
  )
}
, "/play_hh");
)

(
OSCdef(\listen_ii, {
  //9 00111001
  (
  i = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 440, 880, 880, 880, 440, 440, 880], 1).trace,

  ).play;
  )
}
, "/play_ii");
)

(
OSCdef(\listen_jj, {
  //0 00110000
  (
  j = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 440, 880, 880, 440, 440, 440, 440], 1).trace,

  ).play;
  )
}
, "/play_jj");
)

(
OSCdef(\listen_kk, {
  //yes 01111001 01100101 01110011
  (
  k = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 880, 880, 880, 440, 440, 880, 220, 440, 880, 880, 440, 440, 880, 440, 880, 220, 440, 880, 880, 880, 440, 440, 880, 880], 1).trace,

  ).play;
  )
}
, "/play_kk");
)

(
OSCdef(\listen_ll, {
  //no 01101110 01101111
  (
  l = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 880, 440, 880, 880, 880, 440, 220, 440, 880, 880, 440, 880, 880, 880, 880], 1).trace,

  ).play;
  )
}
, "/play_ll");
)

(
OSCdef(\listen_mm, {
  //goodbye 01100111 01101111 01101111 01100100 01100010 01111001 01100101
  (
  m = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 880, 440, 440, 880, 880, 880, 220, 440, 880, 880, 440, 880, 880, 880, 880, 220, 440, 880, 880, 440, 880, 880, 880, 880, 220, 440, 880, 880, 440, 440, 880, 440, 440, 220, 440, 880, 880, 440, 440, 440, 880, 440, 220, 440, 880, 880, 880, 880, 440, 440, 880, 220, 440, 880, 880, 440, 440, 880, 440, 880], 1).trace,

  ).play;
  )
}
, "/play_mm");
)

(
OSCdef(\listen_nn, {
  //sun 01110011 01110101 01101110
  (
  n = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 880, 880, 440, 440, 880, 880, 220, 440, 880, 880, 880, 440, 880, 440, 880, 220, 440, 880, 880, 440, 880, 880, 880, 440], 1).trace,

  ).play;
  )
}
, "/play_nn");
)

(
OSCdef(\listen_oo, {
  //moon 01101101 01101111 01101111 01101110
  (
  o = Pbind(
  \instrument, \lilbyte,
  \dur, Pseq([0.4], inf).trace,
  \freq, Pseq([440, 880, 880, 440, 880, 880, 440, 880, 220, 440, 880, 880, 440, 880, 880, 880, 880, 220, 440, 880, 880, 440, 880, 880, 880, 880, 220, 440, 880, 880, 440, 880, 880, 880, 440], 1).trace,

  ).play;
  )
}
, "/play_oo");
)