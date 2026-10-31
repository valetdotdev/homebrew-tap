class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.100"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "3c2ae1590d075e8e0428a559aac3723c35de8ca062daeaf633f00e9aadfa1cfc"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "ee2512e379973af0ed9b9b6776be35662521821695ffa7a022aedfd0fe4709f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "57e0cc36c29a5400ac67a7b9c9376494015b4cc2c42904aaefa9c80b99ee5500"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "717427c0e8c140d80f8808db252b4480f2ca27c3086858b5c40e115a1fe93756"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.100", shell_output("#{bin}/valet version")
  end
end
