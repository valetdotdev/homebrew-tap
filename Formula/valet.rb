class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.62"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "b8fb216645389824cdeb9bbe5a09c047e220b502b45589dc527a475e4cd8ba27"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "42145dd49609783b882ccc864813598677e72587334eab7f6d097259833760e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "7deb8ca6c16d5efb77fdf1a5079e2c0fea86e45a140f70e149e4e0ba422c8fa1"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "ddd0fafc70bc9cbecaa58bccd7b30ac5b158c290e9fe147920e224cd2ab9f127"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.62", shell_output("#{bin}/valet version")
  end
end
