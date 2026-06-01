class SkddToolchain < Formula
  desc "Production SkDD toolchain — logmind + clud-bug + baseline skills"
  homepage "https://logmind.dev"
  url "https://github.com/thrillmade/homebrew-tap/archive/refs/tags/skdd-toolchain-0.1.0.tar.gz"
  # SHA computed after the tag is pushed; placeholder until then.
  sha256 "PLACEHOLDER_AFTER_TAG_PUSH"
  license "MIT"
  version "0.1.0"

  depends_on "thrillmade/tap/logmind"
  depends_on "thrillmade/tap/clud-bug"

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
