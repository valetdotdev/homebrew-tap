class ValetCli < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "1864362dad25505fbc539e62d1fe2d922ee18fc0dffbcbe8f9a5d3ab2c5ba061"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "760ecd706fa79ac3489760dc47623116c49516b3ddeed770376e52a95a79a5ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "17b7e027094654277fee6d285842e1cb55e8c6db26d1f10bdea012181c359b08"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "50595c4494121f5527ba118bcf7c14bd21bbcef62ae06cd15ff178acc8169de4"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.14", shell_output("#{bin}/valet version")
  end
end
