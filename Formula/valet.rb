class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.106"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "7b7d278accc19da16d9c627c7cc59040df1974d9a137938f225b8032d2aee7ad"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "dd419a99b6f174cf6d24519e201e6811d0ee90eaa592ba6a8958e0755dd77425"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "b86285e52ecb1b2a94f99310c367e564a938c8c35a5d034483e583ffa704dbaf"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "cc4159c4de95f0fd21b82c75eec5448c8fb21db8c3e966fa64b980d36cf49ec5"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.106", shell_output("#{bin}/valet version")
  end
end
