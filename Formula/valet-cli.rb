class ValetCli < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "236dfb09503eebc5a1271784ef8221f508301aeb9aeaf0a69bc5bd42b55dd404"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "031183886136c9420c40e2c6eedd9d1697a51d985d4b5650b0d9ea8a465c0076"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "2122f37f53c3141f062920838fc635c9b84d8bb283b049b0b0a50ec95b61e9f2"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "5a54a1fdb968182288df3a0645ad58a69e5e9d4064b813fa7d8acee6856482f5"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.18", shell_output("#{bin}/valet version")
  end
end
