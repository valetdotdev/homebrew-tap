class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.99"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "d013944a0dfcedac9bef0374eb6b9663f4b28b5a9ce4a784b9b9e04b190462b2"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "a0b941b9683544aee3228bb1494c1ec64744401a33cf9bd69a3dba89da21a8f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "71c4c093f7226e7b727ddb799db3dbeb94330ed57ae97b4e665dd2e4076b1f14"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "57afe61b6d33e57e76aec4877716e5f9d1fe2070f3209f08aaf50bc9c46ca59e"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.99", shell_output("#{bin}/valet version")
  end
end
