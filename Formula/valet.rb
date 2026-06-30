class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.72"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "c2a494d4a502388f6c6ea178f1ccd6558ff58e448635e5c428fe3910e2eeaf52"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "4229fa1b6a6e1587effff88b84eb46096ef0dadf82525a330f41f8858993880d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "ede4c47b1e4ddb91ae0631dd0eb812a25c28f47841286ec249f10c795c0b1534"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "0c082ff48e9e935ee86630215905415e9e03dc7f2d9cd0e87f1d90f76a61b065"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.72", shell_output("#{bin}/valet version")
  end
end
