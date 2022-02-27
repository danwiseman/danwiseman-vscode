
class vscode (
  String  $provider     = 'chocolatey',
  String  $package_name = 'vscode'
) {
  
  if ($provider == 'apt') {
    include vscode::apt
  }

  package { $package_name:
    ensure   => present,
    provider => $provider,
  }
  
}
