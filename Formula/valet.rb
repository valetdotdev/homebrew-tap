class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.53"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "9b6ee1a976e2d70f43edb763bb4e491a967040125476a9bd0939a0e24ade7bd3"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "e0cac00f442234b2113045d9071ed74b762e0a243a69e52d2aded19b454a980d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "c50b4cde773b5b84691801417d1e388421365b0754bba442615ed9c4ac1ccee9"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "4420f518774aafa35305f6a929780ab4d3f39fbc08fdf54c7bbfd8ad95954233"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.53", shell_output("#{bin}/valet version")
  end
end
