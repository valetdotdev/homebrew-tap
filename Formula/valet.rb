class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.76"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "84553ec959b84ca4da162a23cacab0e213c84c8764d21babc6ffe7d7a84e9369"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "431040780cefcc78f55adee858890f93973fbc11b197476715ce4a9fd3902832"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "951aec02dd4944a2ee18001822ed737ff2152a40ba9303442e5a458becdd9166"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "5ea7d80d4ab26a8587ca5c60f99f884136df1fbd4226edd7d72b0d8551312b96"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.76", shell_output("#{bin}/valet version")
  end
end
