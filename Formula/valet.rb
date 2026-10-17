class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.89"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "2094a1bbf6e55fed217bf1fc29b4f313f7d7e5bcd8cce136687cd5e856c93153"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "c51d12eba11f116e110534528bf24aa0f8f17056cd68ab3d728df7df017b5231"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "77a55d5eef5f6e0d4f3ac9415d96c56985593a5e556f6cf54ebaf115aca12cee"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "6f99f80ca89b0bcad4b57c3d4852a18722cce44063fc46b32a41c1c359bece8e"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.89", shell_output("#{bin}/valet version")
  end
end
