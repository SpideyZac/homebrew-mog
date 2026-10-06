# rendered by packaging/render.sh for each release, then pushed to the homebrew-mog tap
class Mog < Formula
  desc "Modeless terminal code editor that mogs other editors"
  homepage "https://github.com/SpideyZac/mog"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/SpideyZac/mog/releases/download/v1.0.0/mog-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "58e072e5531771efb381ec056fa5aa699fb5bb6ea01c739795d74152d5c0b11d"
    end
    on_intel do
      url "https://github.com/SpideyZac/mog/releases/download/v1.0.0/mog-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "e6daa9888bf4a453c493d9236cbf717a177afa53ca96fe7c3cd90815cf4ceeeb"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/SpideyZac/mog/releases/download/v1.0.0/mog-v1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e86c2092c926687828cfab3aebe9e7da0af2b53e696bf78576657c2844ad4a28"
    end
    on_intel do
      url "https://github.com/SpideyZac/mog/releases/download/v1.0.0/mog-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a2b0d203509c9f0582106de436141454b82c45857fb342c900a26d07aa8cfed"
    end
  end

  def install
    bin.install "mog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mog --version")
  end
end
