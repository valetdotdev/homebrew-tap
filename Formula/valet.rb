class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.60"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "61cae8c61536793104698d6d0ebd78ffd74cf888548fd128a60ddd461a1e1c64"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "47406d346f5deef21b4000d994308b95197fb3bd85bdbf47366f7ae330e1542f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "635d668b320fdb92df1678e8a4744d9ec383fd7b66ee6fbf58a721413f2ad291"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "8397d8e1e3ec4bf5a6a09856fbf0824021c684b395ec5d1df98026d16db48d0c"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.60", shell_output("#{bin}/valet version")
  end
end
