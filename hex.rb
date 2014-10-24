require 'formula'

class Hex < Formula
  homepage 'https://hex.pm/'
  url 'http://s3.hex.pm/builds/mix/mix', :using => :nounzip
  version '1.0.1'
  sha1 '4bd115125556228fdd24d54e062e04591ea0c6c7'

  depends_on 'erlang'

  def install
    bin.install "mix"
    system "chmod +x #{bin}/mix"
    system "#{bin}/mix", "archive.install", "https://hex.pm/installs/hex.ez?elixir=1.0.1", "--force"
  end

  test do
    system "#{bin}/mix"
  end
end
