class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "5ef2d2e29e2d92f6a01531538091d27707d11d4714ea66b271c448b8a1db0cb1"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "a6afc6bc9d05fb330a13177ea81b847e2b6315738231aac402f321dd20d5b33b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "4b9ffdb06875f52905bf78e717ffb927cde278ad81bde3faf9af72c8b797eb6c"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "02a7465b460d646f57461eabf56514be820dd9af392680720a0e2e0c4fd75936"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.24", shell_output("#{bin}/valet version")
  end
end
