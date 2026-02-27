class ValetCli < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "6a24178f489f1a09751a3a6fa166fcba13aa57eaafceda85d0279d52b13d862e"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "7c81b17420d1bb14d10d2dcb81b7bed69fff429ec7ffad651a3332e52bfdf637"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "7097818a435fd4a74092e6d84988ddb97fd90ac6412f80ffbd626974e3ef68ba"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "30d1e5b14a7476e14e19794518e7c77decc14153a04f9ac0be8f090e0a7a2148"
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
    assert_match "0.1.12", shell_output("#{bin}/valet version")
  end
end
