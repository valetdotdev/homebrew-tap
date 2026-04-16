class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "a5856933a3131af45cdcd3e474fbba2c907fee90ceb8a633c2eab9397930460e"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "c97a0b70df93228cd0f0c252285ffaa62b3305a15372d2970f755e3a7be9eeee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "800fa996779278853a71e8febfe1f6d08b27cba3ddd1d28f0da478eae14ff846"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "d76e7536ae88ceeb349124c9d09de1489e9ff8a821badbfd6d53e829e1407493"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.31", shell_output("#{bin}/valet version")
  end
end
