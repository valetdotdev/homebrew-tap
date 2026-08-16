class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.79"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "e822ef5743f485584302c6073e56414f5a9f4399d665b55cbcdf30b4443cf4fc"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "a6eb615cf0b4c1044c0c972dfa765a1928d9a3cdc2327aec7b0d874be913e00b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "b5ef39bc0b24db0431fb8a6a5152c4c513911eb5c8821fe906ed08693db3be68"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "0a0ef8b1df4b4dfae0376ed993e2b0e8105aef8312a06c5b9f6c6d85e4fffb95"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.79", shell_output("#{bin}/valet version")
  end
end
