class CludBug < Formula
  desc "Skill-driven Claude PR review — clud-bug.dev"
  homepage "https://cludbug.dev"
  url "https://registry.npmjs.org/clud-bug/-/clud-bug-0.6.34.tgz"
  sha256 "9286b0b056491f296a56803844525cbb2f526830acfc06266f21c928bef1c04c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(prefix: libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/clud-bug --version"))
  end
end
