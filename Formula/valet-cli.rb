class ValetCli < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "301633525a54757911a1e3b22a760e1213cf7646b3168501c9594dcd81232d4b"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "00c5472319f3a2b4034745cdccc06695c2d1f86be73453f1064ca541389ede94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "7324cc8a6f44e550426537d42733aff7523c23d5ea3ce3144f20c7494fd04a27"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "bfe392a719ab93adc36169ac6c6e70d8bf2bf6d08e37333b75a8937641ffadc6"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.19", shell_output("#{bin}/valet version")
  end
end
