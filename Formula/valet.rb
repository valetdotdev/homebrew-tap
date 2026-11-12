class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.115"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "40f5fdde3239678f2d1c2fde4aade113a384694a600ceab1cdbd6256e2937d29"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "b208a123167a2da5cecbb5689ad110cc8295d16a60473a9d12b9d5629398dc35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "617daa9fc06a39fad4ab96f9241e270138e1ddfc3667a0dca24c9c9c1028ff3a"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "f9dce58400deab4495bbb02db783091adb966a6c6b431ebe3798d9fec4f12f12"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.115", shell_output("#{bin}/valet version")
  end
end
