class ValetCli < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "d9c6a7fd0003074b4d97ef640b5085dc22f7b18c771be1965e085f55c83cadde"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "f1ddff019eff6d07e05aabf5ae343a8543331b79bbf942573c941288e385da47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "8092e761d0ce60142a8ad88562661c17ebbd4380d347582672d584e99c149436"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "35f189d63ff52a6035b5b1f04b190f427f38c8b21ca3124085ad1356f10e129b"
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
    assert_match "0.1.11", shell_output("#{bin}/valet version")
  end
end
