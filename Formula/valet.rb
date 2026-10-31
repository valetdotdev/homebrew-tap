class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.101"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "be5cff9e727a66f8ff7670d1e97cdca9116afa61ab0d4488ee691ba10d809f9a"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "6582a27b8bb06c3dfcd55c54e756e2257e6c8450157a3ef3d8b9df2e5c5482d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "4f15cb36207415ed0ba29faca90e60e31085705ffb7b864c5f5dd31965becf55"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "a3894aea5f903ad75ab4cba1ddc46b91c0acb6c722a327d7c41fc55903c72a66"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.101", shell_output("#{bin}/valet version")
  end
end
