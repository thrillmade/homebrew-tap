class Skdd < Formula
  desc "Production SkDD toolchain — logmind + clud-bug + baseline skills"
  homepage "https://logmind.dev"
  url "https://github.com/thrillmade/homebrew-tap/archive/refs/tags/skdd-0.1.0.tar.gz"
  sha256 "PLACEHOLDER_AFTER_TAG_PUSH"
  license "MIT"

  depends_on "thrillmade/tap/clud-bug"
  depends_on "thrillmade/tap/logmind"

  def install
    # Meta-formula has no binary of its own. Drop a marker so users
    # can verify the bundle installed cleanly.
    (prefix/"INSTALLED.txt").write(<<~EOS)
      SkDD toolchain installed.

      Both `logmind` and `clud-bug` are now on your PATH.

      Quickstart in any repo:
        cd your-project
        logmind init --with-skdd  # OR  npx clud-bug init --with-skdd
    EOS
  end

  test do
    system Formula["thrillmade/tap/logmind"].opt_bin/"logmind", "--version"
    system Formula["thrillmade/tap/clud-bug"].opt_bin/"clud-bug", "--version"
  end
end
