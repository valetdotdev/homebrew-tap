class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.63"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "3b6b63674939716ae06fb19a6ede56e3727e0fff64dc62bb877336a2059c0404"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "2b18785e81d0d113fb04c88c0c8d488a6c3a3da2ef2bfd9d65cc166c8bbea880"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "9f2f7155bc606d5b40ae6e2a5f1ffe33dd2faed4d9f321c85b648e66129d5a60"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "33332e941128334a6d62341562aed1bf475e47c557a449fdd06812188d25daec"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.63", shell_output("#{bin}/valet version")
  end
end
