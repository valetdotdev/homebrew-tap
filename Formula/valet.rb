class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.90"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "13a4899742857b132fb4c0af83e8c5f76a44238710c80b3f9af2ae1dd45d5a00"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "aaf67e2aa50a7f7a7bb7644a8461baa21674172f957902850eb3282ea951853c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "f4f4ea2a08905eb73b20406911845d773900f9bbbd5fead740c9741d318174ae"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "c40b45af38dabc04a4e050172de47790187e4729d5d33f7fe55b5095318bbb96"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.90", shell_output("#{bin}/valet version")
  end
end
