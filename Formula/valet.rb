class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.105"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "0a46b5c55be6c644f9e5d09de5172cf01760124ed2b86f0b9c8cb2236c40b473"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "0666c91cc462ae45b30c773e59f58cd6620f4c3873801fa9cf48b540115f93ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "2af6568b9ebad49853adb47637e5aab3ad7879157b5d8f23e85f9d0257bc80a5"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "a1e2687e4ac4e1710812372ecd47f3125669e61321b40f6e688bad1036c93418"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.105", shell_output("#{bin}/valet version")
  end
end
