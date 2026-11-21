class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.117"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "601a64b894f5918453bc80cd6a92cd47a0c47cd44991bd056b859bf3f24c6dbd"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "efb6c8049e9f10bb851c4526a6ba63ac978e135e9bb53b6543b87f5d662682f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "8cdbab53e8db6151fb8ed079152393f996e020c16df3bfed7bf3442a33bc997f"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "00fc238c2c7e40245bc023b47ab3ab126882871a6390c3712ce7d856fcb8dead"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.117", shell_output("#{bin}/valet version")
  end
end
