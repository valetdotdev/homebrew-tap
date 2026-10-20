class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.94"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "4fd3e77eb998f0f18418c66348adec04499a92bde2b92a96550b6396cbd7e30a"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "6c7145d49db2b7ecbc8d4733e0d1ecbacc94c8f5e3a4f038b0b3c818c7e43f81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "739f8fb9fed858e9a247378132d8685dc29eae47a00428121d8b5f1f8b1a7512"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "7dcd23ee633ee2cb5e5e125e1bf32dddccfbe9e00aa9e47650c6c535721c6e28"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.94", shell_output("#{bin}/valet version")
  end
end
