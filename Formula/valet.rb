class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.110"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "4d57b724d42639d1da69a7fcc47a8fd9d1118dd6e19b0a6af4486b3b771834c5"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "564fc945261cf34a1db375008efc707bb5027a81b813b8edcde47b6ddbeef4e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "d143ea110c34ea36b2084594c14b2a26d824c05d9eb4cc8b39905818fa96b35c"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "df4d334f67f9d58a1b7e0d34b2730d8c844165b8520ba685ec6d4b9321178e1d"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.110", shell_output("#{bin}/valet version")
  end
end
