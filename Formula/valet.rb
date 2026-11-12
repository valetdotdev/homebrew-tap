class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.116"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "687bd95cc845454f1884a0677e46fccdca20160c7d7581560df1bafe44318b10"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "a4bbee2ec398b16834b578d298d0b99580cc0185d47446fc6b1635158aedc445"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "1e2614bf6a0adf31b0c3ca8a903bf3b138904c029b2e0ab0538a2e4f7062db13"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "b8e7d1a246f850f48e044f161a332142982b7fa2fff1cc7b53aa8c559307f9c4"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.116", shell_output("#{bin}/valet version")
  end
end
