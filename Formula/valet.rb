class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.45"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "2c37433160e971fb695c3635e1b5d2fd1b8f6f98a27d57a7b0d0ef3a18b89514"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "4d821f46434626f44f84cd8e1c5300a29479f7f5dd185d88eb20a4a08e2022f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "118a47357aa886672d547388b016c8863be625ad0d100dc55b08ebf26841b412"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "7b1ea44c08c5428a62fb85c5c46d31a021cc2eea7c9a0d76d3881818d43fa4d9"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.45", shell_output("#{bin}/valet version")
  end
end
