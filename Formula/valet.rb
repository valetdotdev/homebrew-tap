class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.97"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "9acf1f16e11d8c43ca0c55d1bf1da4d3098e2eb6e7bc2b3edae40e0f8bdac8d0"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "9bf127fdbdaf7b9f953abf46e9c4386832c64f8b108195227e77314ea677f2d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "9f18374d791c1a94b9c7770b7baab64cce0dfa4629a445fb5ed0148862c02e23"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "63830c767ec17114b3f70ef82a1cfc62088b141ffd5104b96f4d56f2564a9089"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.97", shell_output("#{bin}/valet version")
  end
end
