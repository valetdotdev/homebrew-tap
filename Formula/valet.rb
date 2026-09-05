class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.83"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "5c7dfa780b7ac477cb70462862354a527ae952a34fe38c0760d35560ca1a8d29"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "6308df8400a51b4c2193b654dcbfc42265905a99a635aa7640272c26b5cb939f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "ac4755d7b39fb8a1f74816f4807675a3693c28b4448e5577c617894010e9f762"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "20c2638fbdb5bdf47157d75cda11d6da55fe88b8e0848755458593fa2a606145"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.83", shell_output("#{bin}/valet version")
  end
end
