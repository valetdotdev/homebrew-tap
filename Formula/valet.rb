class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.70"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "00ec10af217b3f13630711b3334c6c23905167760d086af65b396357fbbc2544"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "80ba4bb982334eb0fc87d52e12169bcfc0dd4e8e8dd6f37a40ec1384b92dc563"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "d50b906749a5c25598d9411003ebb5938b9965ea77b1145a09a61641d63ab4a6"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "6d111bb6c3c8326d6bb64e9b89731dd7bc6c75234198086dae1e9b1bdade7d48"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.70", shell_output("#{bin}/valet version")
  end
end
