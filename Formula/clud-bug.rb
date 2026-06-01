class CludBug < Formula
  desc "Skill-driven Claude PR review — clud-bug.dev"
  homepage "https://cludbug.dev"
  url "https://registry.npmjs.org/clud-bug/-/clud-bug-0.6.33.tgz"
  sha256 "1038f3bca84a747d71ece9abe54b139edc09bb8758f571901fb0fd08ccca4140"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/clud-bug --version"))
  end
end
