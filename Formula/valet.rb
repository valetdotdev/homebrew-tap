class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.112"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "f781b78d692cd324942c10793b8ef7ad90f5d387c7276e0db95bf431ec6758cd"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "93fd8333d05b9ee5b3b841538e9e12831c0642dc65274d721c4c9f1990e6e91d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "a81316f53299b830c0cf7f91ef1ee2a7fc1b04cace6cd3b1fe5dc64a59997ece"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "f25340f100d637c9892bf0099370441ed4f2963c4b918aa404134cc8419f2b67"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.112", shell_output("#{bin}/valet version")
  end
end
