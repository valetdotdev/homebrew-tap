class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.114"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "c726613e52c13b26a4a55682f5e3114be7e4a3a04d7a1484e7ec8c2931fe0ecc"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "08f4f5097ff31b7f7dc4de63fe6a52b1d5cceada20d806641fb005cbef9ec4fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "450f5a128c84437072e15ee00819b0810bd086ef523d2ad6237abb07e4eb5437"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "e5693505252efb0c6d0d410889e343d54ead23214ffd912137a7d82561d73cfc"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.114", shell_output("#{bin}/valet version")
  end
end
