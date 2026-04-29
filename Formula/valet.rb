class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.44"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "7a4ef29141e4f60a6a1ca97f5d42b059b758cb97b5b3ca5e5f2869722569efcc"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "a45842ed6ba3ea2ab643c8dc8f636aedba52a0b98f4784d9c61f4d3066380da6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "87e2dfe9ddc1bb8210b0d27e56fc1acc31bb74f5e30ac8d3f1f3bdfe91136e21"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "683845308b5604370562cad12e6be793d2ee059fd2bf83cbb8d760e677b9c071"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.44", shell_output("#{bin}/valet version")
  end
end
