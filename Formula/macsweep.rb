class Macsweep < Formula
  desc "Recupera espaco no seu Mac: desinstala apps, limpa caches e mapeia o disco"
  homepage "https://github.com/brunogallotte/macsweep"
  url "https://github.com/brunogallotte/macsweep/releases/download/v0.1.0/macsweep_0.1.0_darwin_universal.tar.gz"
  sha256 "a6940531774c2aa82397846fa7e125430015a8f4ab3786bb54b130db5939f878"
  license "MIT"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "macsweep"
    generate_completions_from_executable(bin/"macsweep", "completion")
  end

  test do
    assert_match "macsweep", shell_output("#{bin}/macsweep --version")
  end
end
