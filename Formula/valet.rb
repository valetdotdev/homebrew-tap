class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.103"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "cd75db3c57afdbdd1a81000f18abca1f08b12864791ac051c0c157b47330eda2"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "1d7609dfe02f72e55b37d1e1af5c900de5fc740a03980c75f9291c75f76d4ca5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "296b4e145b758d2e925d83082319753909770c5c4142dc90e834fd38c6e6f1c0"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "2718208b63d776e21358217e07db5caab1e408d7a5f02808daf0d2d964717f9c"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.103", shell_output("#{bin}/valet version")
  end
end
