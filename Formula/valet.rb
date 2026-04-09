class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "3772758a26be170b1bc013239ecbdbad443c9421bbbc523c6ed67a75c8448dbb"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "ee4b3b1abeb89a173bdaebd588e768d163ea93c1392d12cacd0212cd9a5773ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "d9bb0e4079db08dd08d662a17759e35c3340a6895a1b1b3b7ed398429f89d882"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "90e83b48b594b794e4ca9f110773beea05b3d19df78315e7a93aad6ea35d5377"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.27", shell_output("#{bin}/valet version")
  end
end
