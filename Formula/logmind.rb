class Logmind < Formula
  include Language::Python::Virtualenv

  desc "Branch-aware AI decision logging — logmind.dev"
  homepage "https://logmind.dev"
  url "https://files.pythonhosted.org/packages/b0/5b/b8f5b6e5862a2c04df5da24cb002dbe81d95347380fb54c2d586069833a0/logmind-0.6.8.tar.gz"
  sha256 "81090567ba54f11a5842a3c7450787c373beb36ebda725f1a207e56094375af2"
  license "MIT"
  head "https://github.com/thrillmade/logmind.git", branch: "main"

  depends_on "libyaml"
  depends_on "python@3.12"

  resource "click" do
    url "https://files.pythonhosted.org/packages/9b/98/518d8e5081007684232226f475082b30087d0f585e8457db087298259f49/click-8.4.1.tar.gz"
    sha256 "918b5633eddf6b41c32d4f454bf0de810065c74e3f7dbf8ee5452f8be88d3e96"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "logmind, version", shell_output("#{bin}/logmind --version")
  end
end
