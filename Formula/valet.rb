class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.71"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "aea690feef6e754c2737a9691bb1106eb2027ca4b4bf4513f4cbd5e845107243"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "755604793a6e885a7426445c3ed11f4a85e0de75a32c19496a7e9fd5be96c042"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "d3d5c5dc68cf0bed0d717a4e5d4e727d85c13626825983309b9e0c4fecfc058e"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "fee98dd80cf4c543333695040a948b8f0b1a14d691823520243e39019dc579d2"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.71", shell_output("#{bin}/valet version")
  end
end
