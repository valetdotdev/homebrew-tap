class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.41"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "dbb3ceb3a4180acb3b576e26abb5d83258df6c2db527d2f34268b647c02befe8"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "48d628455ded4b016a894a66fdb7c369fb04f55819056426b91aff7d6aad2077"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "98228a1703571d8432b8e1193adb85fd0cf933564425d52f11aaa363e819b8d0"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "f37b9de8b31007c0572c825d36147774b44432e424def631ee91d0e1afbb0acd"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.41", shell_output("#{bin}/valet version")
  end
end
