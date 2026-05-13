class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.51"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "feb27056c20c2bae4e69b0537ccd5e3cc2fd658816713961afb7a95f590a5f16"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "0d55e77e3607f2379e06488d8a35329d24d3a69cc023216453b03948d08fbd52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "71bd469cb20526185d6afb62353bcf0e421e54de39d3f5080b4912a5df50ef8a"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "9b67d20ee2bac6e30fd5ca85d611add67510f461f9eef3e2b93cc1f2e58cdc8e"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.51", shell_output("#{bin}/valet version")
  end
end
