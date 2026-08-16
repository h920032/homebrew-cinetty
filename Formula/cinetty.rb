class Cinetty < Formula
  desc "Movie-style terminal coding and monitoring simulator"
  homepage "https://github.com/h920032/cinetty"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/h920032/cinetty/releases/download/v0.5.0/cinetty_darwin_arm64.tar.gz"
      sha256 "0bd6e7ddf7a685ca857e5548df46d69feb3a00cf19196e27a0476f7b8d00e996"
    else
      url "https://github.com/h920032/cinetty/releases/download/v0.5.0/cinetty_darwin_amd64.tar.gz"
      sha256 "31fe98a5604e70d43fa94c795698bffaeddffa4ce397057101937fdf3548cc28"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/h920032/cinetty/releases/download/v0.5.0/cinetty_linux_arm64.tar.gz"
      sha256 "5df6b3a433dd82c89de46ae1792e7c2a2f8bc92fb2b30e7e3ec9f075e058085b"
    else
      url "https://github.com/h920032/cinetty/releases/download/v0.5.0/cinetty_linux_amd64.tar.gz"
      sha256 "d48afa72907d8bd9d13e3babb8731758da3a9e9b024209692e9b9e40f981f645"
    end
  end

  def install
    bin.install "cinetty"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cinetty -version")
  end
end
