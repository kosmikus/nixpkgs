{ cabal, asn1Encoding, asn1Types, cryptoPubkeyTypes, filepath, mtl
, pem, time, x509
}:

cabal.mkDerivation (self: {
  pname = "x509-store";
  version = "1.4.4";
  sha256 = "0i3hfrddr0wpfl75a76a1j24az08z4x7ya8l5qcdk7c1lr2c2bw8";
  buildDepends = [
    asn1Encoding asn1Types cryptoPubkeyTypes filepath mtl pem time x509
  ];
  meta = {
    homepage = "http://github.com/vincenthz/hs-certificate";
    description = "X.509 collection accessing and storing methods";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
