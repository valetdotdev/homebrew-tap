class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.75"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "a8b1d7bd3d8b9d407f27adf34277ab36b17a3833ea07f5ed7a9b39a1b2bb18c7"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "2e61aa59c2c3eecb102a5490c7940cf421663d30284432dc2d047ce42c202e74"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "a944a3f44b812eb1bfd327e22b9cffc7eb68c470a5ab33c3d039e8612a58200a"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "13a43181b1edaa5197dd32882c9821bee4aa574376b75e8244df389e6dcf8462"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.75", shell_output("#{bin}/valet version")
  end
end
