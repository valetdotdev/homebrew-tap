class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.93"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "049c0ceab11b920eb4c70c15d8f0c8a9300986b84ceede786265f1e782a277a4"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "3b3086cb27a7fe393b11fd78ead1ff070e7520ec80ca743d12911dcb163b47b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "0db0c24e0c25a43ecf4876e44682006ea09fa160ec02348e586fd533c72f4308"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "8e598339d0977068e088f45c898ab02dbd5659725fed26a5bfed6e5f0146c1f1"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.93", shell_output("#{bin}/valet version")
  end
end
