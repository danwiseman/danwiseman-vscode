define vscode::workspace (
  String $workspace_directory,
  String $workspace_name,
  Array[String] $folder_paths = ['.'],
  Array[String] $recommended_extensions_list = []
) { 

    file { "${workspace_directory}/${workspace['name']}-workspace.code-workspace":
      ensure  => present,
      content => template('vscode/workspace.code-workspace.erb'),
    }

}
