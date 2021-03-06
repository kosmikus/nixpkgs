{ stdenv, fetchurl, gtk, libsndfile, pkgconfig, python }:

stdenv.mkDerivation rec {
  name = "lv2-${version}";
  version = "1.8.0";

  src = fetchurl {
    url = "http://lv2plug.in/spec/${name}.tar.bz2";
    sha256 = "1mxkp7gajh1alw6s358cqwf3qkpr1ld9wfxwswnqrxcd9a7hxjd4";
  };

  buildInputs = [ gtk libsndfile pkgconfig python ];

  configurePhase = "python waf configure --prefix=$out";

  buildPhase = "python waf";

  installPhase = "python waf install";

  meta = with stdenv.lib; {
    homepage = http://lv2plug.in;
    description = "A plugin standard for audio systems";
    license = licenses.mit;
    maintainers = [ maintainers.goibhniu ];

  };
}
