class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.96"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "7e9b0d931aff0ce7cb818f4d487af9c6ea52caf9875bf242a1b228e1b0d051a4"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "28a2745a4a6a0fa932ea0bd7acf1fdaeb8a47f1eb1eeaf9e04a5d1d7a2bbf16e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "de400352f3b24d3d1bca98502f95951b8b990ba8dfc69edf77431402760c5768"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "609dc6007dd5602fe4a0cd172aa8f651dc0709428c3d615c262502932fd52d05"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.96", shell_output("#{bin}/valet version")
  end
end
