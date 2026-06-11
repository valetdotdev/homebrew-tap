class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.66"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "1c4ee40bdda45dfd71832e3439d406709286b18db3c301aca695df72e0ec06ce"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "be77fcbeff4de9acf1ced0d2802a5d7cdff6137d23558205318db810327899f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "efa9b1460ac7141305fdd802970d1d7531ca4296c733fa11f416f10ceaf40a31"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "b6d3a9287719dafec8c542ea5d188515f15fe6ce9c1c0ab300145ee43b755a1d"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.66", shell_output("#{bin}/valet version")
  end
end
