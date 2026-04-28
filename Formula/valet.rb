class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.40"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "f773590ce0e988a49b4d108ebd54cff8ed575a8a249b65f6009eeb534b26b5e9"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "3a503d18fcc192cf2f4bf699428e7b45c93d2348221ede181f55010b533ac260"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "28a8321f09314eb88887017ddf726339575219b2c0ce9a8b1024dd8e317af1b4"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "c68c3a0883c8d5601fd075482fa028e338b91d3fc69acba65dc33c6343316cee"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.40", shell_output("#{bin}/valet version")
  end
end
