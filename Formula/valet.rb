class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.55"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "933dd65146f1ad1ca294660d801f9e0b85cca6f4b6c0b011cfa486bc58244b52"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "679fae4281c55a562735fb34f4263041e81762e2652fe2473ff1436eb2c76d1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "d61fb637ce6ef475c6f395a11f9bc1f9eb41935e5ee926f2c69bc7d3723a1c91"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "ba873c4de838e2fe89929482cb0e166d0f2991f074ee65384dca4409ded82a30"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.55", shell_output("#{bin}/valet version")
  end
end
