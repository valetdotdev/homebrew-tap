class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.74"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "d324aa1bc91fecaa2b87a151b15ffa886ba0dc66be3d940b7d7585aed459bb22"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "df90732860da0ded253359fefec95223d747af1c81c50a326e11ad4d663beea9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "b4fce16f8551648ad7941ff28673372469416befda47a0e9521a1885367384b8"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "1e98308f5c320b2c25be1c8044216ce21eced408942eb2aa06873c06ff97d43e"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.74", shell_output("#{bin}/valet version")
  end
end
