class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.111"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "b86ec302e28b24f66c029f28ec605eef8f22258b06713018fc984d4c9cb72718"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "0c35a719da83ac757dd1458806a53c4f493182d5b8d64e626900ea657fcce7ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "4fc14bd3103905f82787cabbc7b625f8aaf2255eb1115395db63c99b6ef52b16"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "bb4361aa7b852683b965a0233bda442fb0e34ec81309fad7d0a08c33218e5789"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.111", shell_output("#{bin}/valet version")
  end
end
