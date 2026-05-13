class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.50"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "4802a0d77ba44db9ac1764efd24a7cd9f85d64bda63d7058ab808d1b90ab75b9"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "1965b702e520254e8baaf9e505bbaec1001dd27c8c3114c40a21e0dbdf644fc0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "bfc308a0adb80611077d6a23310d2a17cc15b4277229967ee2c401dc03aacec1"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "d31d4bc5f495b46fef33ad4dd69020ecff87f396d3f7334d1c78329e21c479a0"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.50", shell_output("#{bin}/valet version")
  end
end
