class ValetCli < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "31711c51e045cc0042e2a45c0e927205b4cccc204e708b85c0e6080c53f516af"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "5598c890192f66bc310a74a7d6a2e254c07b9a4a9b60d4f31bca4b427ca01f4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "90ed8f5ec33afb99af0319da73188673fb1ef81790af577a367ed5a9076af3c9"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "a89749be9ebcb9c55cbb5f5cef11822b5d90af8145ba76ddf67749fc42e4716a"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.15", shell_output("#{bin}/valet version")
  end
end
