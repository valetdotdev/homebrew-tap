class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.102"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "a2c3347d4e7b89c7cb065fb65a884dbcc526267cb7cac04c6703b92b8b416e88"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "470125fe2e00a3821acc35661dbb3f79fa375f4f0733ffe70db1c1315592a67f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "440f34d82e6068adbc9fe70d06128fd9bc8e834613932a7b7daf7f2447927636"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "98f0519de61fbbc6676a00bafe66c9b5f33052cd17e070d3c2577fbeb7cc6c77"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.102", shell_output("#{bin}/valet version")
  end
end
