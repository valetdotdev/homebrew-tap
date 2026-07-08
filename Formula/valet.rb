class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.73"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "64b3e35fb383eb2097fe2a05a1943293c7030136dc4ce7838f523437fb808ce6"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "81d1b14b40553d1b11fa554b881fa3fe03904118d50563a7e0c4ee1cf636f7bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "7f97202f884a04a86273415688341c41190413543b65eaeda1744ed59331cb83"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "67899bce3d4ae3cf9fc2913db150a7af80ddc5a4c3979255cf668fc029c77dd3"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.73", shell_output("#{bin}/valet version")
  end
end
