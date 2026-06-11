class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.64"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "769a390caefc073f11acf31dd5513d90b93fd58e82d7d9eeb65b580c51ee0ffd"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "3ff71e91ada9476faaa4213587de4b7d0ca6656476b2a9d8e671bb19901579e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "ac5698910b5fa6b2f9b3370545230c2795f670839a12a024a7a6d2189987dd57"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "97e2f66634060555b258f0dd6e09efa1477bd78720730f686698a0c879322bf0"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.64", shell_output("#{bin}/valet version")
  end
end
