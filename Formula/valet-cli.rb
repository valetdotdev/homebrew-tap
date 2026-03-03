class ValetCli < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "7607c772df4a5580697b98af5ce7e470999445b95fed61898a636899218b97d2"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "c4075d07e2109f2c8c2f461e79924288abc387388788c03afc74a2b341eb7db6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "c55c4aa22f3b2c66d47d061d4b80914292aa34be4f80754eb460ec90ae6846db"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "9dc0c881b69261eb9c32b61f221c0e8a226af1b37a8ecb0f8a0483dde02872e8"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.17", shell_output("#{bin}/valet version")
  end
end
