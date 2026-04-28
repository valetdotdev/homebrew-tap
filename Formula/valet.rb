class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.42"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "def57b73c6faa1daa8366a72e1ea22d01e8c464d451ceaa1475c3b72a38a4df4"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "e0d1a8d99445510359c77f09242cf0d7747cb31e101ae93b92c652beff81d58d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "c356f6ae87b734935d44ae1d1e74c72d0ab56c5fd7df624a9ea7e29e90d66cff"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "e2f59999c1834ac05f4928ea0c1faf33d0d5b02ae0ae26c630f6519ac60515ae"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.42", shell_output("#{bin}/valet version")
  end
end
