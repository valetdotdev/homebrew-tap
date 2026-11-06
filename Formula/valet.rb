class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.113"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "3e0d15be98c4db83ada4ff65972184487ffa0319acecd088d2f99706576f09a4"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "c7dfee2988ca9ab1246b5600f3f249567fefb9b7cdcbbf5217819a96017255e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "c116ccf5bf3bde3c73e4257a053dc49300651b9b86fc7e0f77f07eb767c0c526"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "00c02c88016f1012f63b4c60ad5c9efcad5d28ab030e7ef73491e87d1a95900b"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.113", shell_output("#{bin}/valet version")
  end
end
