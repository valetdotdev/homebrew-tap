class ValetCli < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "ee23f3943d98e6499d8fae0e60faba63b0170698ce4ebee1e6f2c434e4afe4d9"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "ed7bf36444b398616f882208451d6f881bfb7d64723ef1388093f234c7728ecf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "f8872de4ad8e7be9e31b90713b824f2e35ebd160c073eb8e7f508e01d2bf7c4c"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "fac43e5362910941162bd2d8976eaed17f496dae933180e3aa3893cf7dfebcf6"
    end
  end

  def install
    bin.install "valet"
  end

  def caveats
    <<~EOS
      To get started, run:
        valet onboard
    EOS
  end

  test do
    assert_match "0.1.10", shell_output("#{bin}/valet version")
  end
end
