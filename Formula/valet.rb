class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.87"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "35f65e0fe54695ca459a3311a87d6af6608d80df9e2b748f109053aae3c20cdf"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "332eea328bad942c74e9f6f09d9d151a280f48fa42597afbaf3114775387f2f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "ad65cf8d20316a16f428c1ceefe2c246e6d55b058445f3dbf6888c1d090ef311"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "28705d28944c5ba227aed09cd1d228c7085b0fd0304dcf94343f7f93e2f44d9b"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.87", shell_output("#{bin}/valet version")
  end
end
