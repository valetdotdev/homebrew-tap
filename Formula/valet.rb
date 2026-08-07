class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.77"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "3be5046243ff1fcfe8c2db8c5757c17c89815c4e40f65d5e3ed3c79f8edd8efd"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "e025eb670a2068f176ced190abbe6789866fb8aa7b031bbf50b14ed0f0b25680"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "00ce826aee5c1972af614a5854171efd2ed0f8328670a579da49d47f8d3e7f6b"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "c28b8254046b5a3bdc0880fc111ddb2dfe6adb4848cbdb1ce837a10a34d466a4"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.77", shell_output("#{bin}/valet version")
  end
end
