require('jdtls').start_or_attach {
  cmd = {
    vim.fn.expand '$HOME/.local/share/nvim/mason/bin/jdtls',
    ('--jvm-arg=-javaagent:%s'):format(vim.fn.expand '$HOME/.local/share/nvim/mason/packages/jdtls/lombok.jar'),
  },
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  bundles = vim.split(vim.fn.glob('$HOME/.local/share/nvim/mason/packages/java-*/extension/server/*.jar', 1), '\n'),
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw', 'pom.xml' }, { upward = true })[1]),
}
