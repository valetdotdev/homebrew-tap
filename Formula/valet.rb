class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.95"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "fb820ba999a1df32541cf52f503eee6c3cfe4e27fe53e19bef692c860dfeb709"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "e2c45daf59f5ca5ea09fed973b7cce7afa06d0df8942478951434e04109a6d0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "57b5cfa7fe14d5c6fdbb72e4e6c4f43c91087f86f60d7c1efa4abc5082f39082"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "5814ee4e576a93a248e7cf689a05b0444e1927428e76485011c52a5795604cc5"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.95", shell_output("#{bin}/valet version")
  end
end
