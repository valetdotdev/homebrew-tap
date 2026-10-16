class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.88"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "b915cb29430c3bf93d080cd71d9de2ab2124fb99a5364a292a0bde8865d9a467"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "d3963c2c8fc544ffc7f529b182ce64fc1d51e70ae84d75268615a46b75bfa951"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "95a512c2fbcc655d698164e47a93edd55b7bae5592bd5c2a373a1c299359701b"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "0faf4b11ce56e3f3f5fec75bdb9173587d929a33014098c5bf0d86d71f9a7de3"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.88", shell_output("#{bin}/valet version")
  end
end
