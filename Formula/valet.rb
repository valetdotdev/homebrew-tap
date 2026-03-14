class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "351f549d682888f070909748fa53ef2adfc7214e62784702813111bc0be9dadd"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "690e40174241c9bb44c24e7e0747edbd982b6d6d9ada3207b5dabf98cd75583b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "9906da8dfd4784e3a5fc5d9fa8a7e5527cfb50209e83c79edac772dfa10ea82b"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "5e3a8a650c2169f7ed74217b208edad9047f44c033d982f3c1ab471d0e29784a"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.21", shell_output("#{bin}/valet version")
  end
end
