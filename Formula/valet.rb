class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.54"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "3c77c212f8d80d0ddfc3a23a99325b45dca37e354c7f65cd0ea239ba3affa606"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "6b6a72ba7ae320c95d9fd9ecd73d9a85f65cc5109a237069f7e3f1cb673f22a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "d2747796e80b74f4167756177fc2cddb68c2fdc262583ee3e856f602d4a7957d"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "13164b3b5d87ca999bbcc2c6a7c71e6e22ea98a665d15a21e2d0a7e0c97a788a"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.54", shell_output("#{bin}/valet version")
  end
end
