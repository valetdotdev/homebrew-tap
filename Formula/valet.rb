class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.56"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "459f43cd518bb766274cf1d9ff910e587a40fb76b514adca2969889a00c5763f"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "6006031ba27c220976e06f294f86955bc42beafe62ea21b1fb9214b6d3fe7054"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "d8bb8ce52c5fe3f2b09d7e78a41be81452fb876b2bbd843bae6ba926032105ab"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "e84ce5f729e8de2163519dda7c6da2e8e85b1c35302488dfc285c9502bf97d56"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.56", shell_output("#{bin}/valet version")
  end
end
