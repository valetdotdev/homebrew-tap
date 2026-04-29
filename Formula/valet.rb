class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.43"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "6fb91eca0bc37e9a845d9a41f446253ed323a312780914f1a60791ae6b7dbd93"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "4d6f29659d7ca846fe24a9de8fd259160b26be40eac50c31c5e5d405b5aeafae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "1d0d77b81f193cec187d0f034cf4e66a7bf4a1a666559fc24e6e2861856533ce"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "bb510c782fecdd55b468badaf89988177ea8ba78fb52824fe9b234d874f78fab"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.43", shell_output("#{bin}/valet version")
  end
end
