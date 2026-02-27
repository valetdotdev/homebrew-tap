class ValetCli < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "d9189626095a61373299d8c44555bf37641bd1efd9bd412450558307aa571f62"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "14fad972e6108dc2b7dbc698c880700ba3230d51f7a3bf25899506f13d7cf2f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "dfe25d00dbf89340fed469fc63bec668792a83bb1207585cc1dbb4e326f480b6"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "fefba2f2332b1b647dcd9d8dce6546bfe0aae325c3ff9ef5414614403ff26ecd"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.13", shell_output("#{bin}/valet version")
  end
end
