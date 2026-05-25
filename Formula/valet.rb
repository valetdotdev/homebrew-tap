class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.59"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "6572ed18e6711d4aa0baf8a5f24fc5e147e6cd1b76723a4ba0fcf84e8d27ee5f"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "073033f07cad93cc64588fece429148c01d8bf28d273aa2b3f6920a955aaa244"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "bd3b44784b4db28098c9fbf42610585a4c803b090b4b605e24de0292e3ca79cc"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "f878996352d2b7c722f4f606f4a2cbe518783ecbeb4e5f6be1cec53785d84a25"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.59", shell_output("#{bin}/valet version")
  end
end
