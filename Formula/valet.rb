class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "5a8feafa5ce6713a039e55fd8b41f7e10ac7119a31dcce94335b2b2e19bb75a2"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "b69111f69983be67ca2476e5bffa6e44009b9cbf753eac0974e8dff951e6fc77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "2846174332b7ce73060326d1b7eec557acd636e6bb699900f3003d03a8a8f256"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "b00d44b795d12b9ebf029bb4d92a080eb97395ece18e3f1d0c56120d779ddec2"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.26", shell_output("#{bin}/valet version")
  end
end
