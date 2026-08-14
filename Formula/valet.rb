class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.78"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "aefc705140d199a1b6507b2f8992cc3d54c2d573623d7350f5e9604348408cb9"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "86e3a90906b72a8f048b27605d2b4b2de887e36510e5a55a18d99f8b46b620f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "cc6e06b46e5f120c883f7d3c410943bebd229a6f85894a1b9a13b5ce847a8b9f"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "a135e50e1380b11adb533619206b6310030675de7e51d8a26a3efa32a587502f"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.78", shell_output("#{bin}/valet version")
  end
end
