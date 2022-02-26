
class vscode {
  $vscode_provider = lookup('vscode::provider')
  $vscode_name = lookup('vscode::name')

  package { $vscode_name:
    ensure   => present,
    provider => $vscode_provider,
  }
  
  include vscode::workspaces
  include vscode::extensions

}
