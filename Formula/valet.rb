class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.34"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "ad5584ad2407a933ec88b6fd07202cc12dc964cff0983884037c57f309f9ceee"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "317046d23e534f61209fa24d47b1bd512893ce321f5a5f1ee4261a5f37d74c3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "b3537aa94d848ccb630de1f8e26a5d4db4dcf17be241c2dc3d846895f5f75abd"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "dc715c2342193d3b0907990e24dce08b81626734a43c416a65a6d16e22bca43c"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.34", shell_output("#{bin}/valet version")
  end
end
