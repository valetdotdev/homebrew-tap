class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.86"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "31ee4d07449c94e032e1ed91e8b377a6c9fa1f97b81bbf5102cefb6d8cd78f6d"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "97bdcff4126dd43566cc2f998fa3879b11b59eafd6ab2303f46a357b33bd9e49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "19669fbe1a5187310cedd6952c77b7a5dac3eca431fe5e503750a3e2fae7dc10"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "c75bec412f681804fe3878832419eae07c8775bbdcf42cebae0a52c28ce916d7"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.86", shell_output("#{bin}/valet version")
  end
end
