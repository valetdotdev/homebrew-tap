class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "2627e6071c227ac078b5b7e9a8395d5a86487f5fe07823b66150b566e97e7b84"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "47bb7f52e23789c2387fb847e4322cfae71ddba3aa3c092244f7b10ac4d5af0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "14aba47046dc8cfdb46fca4b96f41a9c75d7af3f51d349d6b43ee2c4ae132121"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "3da9be7885f52814ee4de4e3bb1b4c7bfa7de31cadf7637f9f77292e0042fa8f"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.23", shell_output("#{bin}/valet version")
  end
end
