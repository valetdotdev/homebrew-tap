class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.39"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "ebd12eae54cac8f7b9c0abdae6cb7f16c258e6b766e17d33e25847a3ad360f83"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "a5918ac48a4cee6dc1ca377ed39410386d40ebd2dbe013341d8317e635331799"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "d5b5940dcbd98ef658ef33bee3e5c4c5815b4b5e96006175cadcef7bc662dfdc"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "fa72212e485e9e1c4cda17d9095db81be0972078a1e1781b4f9ba89c0bdb6887"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.39", shell_output("#{bin}/valet version")
  end
end
