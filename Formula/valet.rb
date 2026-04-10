class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.30"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "035fcf1b4f1f73b51652b0c29182e18494ca180c9e24ff0a2acee3886ab739ac"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "1da1ec223677071148f41e81973f866b6d1b8092ba9ac14745729f4de9cb0703"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "093f0ed4fdb415c1187f23fa7ad537212db387eaa8910e3613c14c07cc0957a4"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "f5a33f8b5c011c7e099585b96d98539a4efb7071181a25e7946975b23377b3cb"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.30", shell_output("#{bin}/valet version")
  end
end
