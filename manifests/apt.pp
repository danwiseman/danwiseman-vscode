class vscode::apt {
  # add microsoft for vscode and others:
  apt::source { 'microsoft':
    location => 'https://packages.microsoft.com/repos/code',
    repos    => 'main',
    release  => 'stable',
    key      => {
      'id'     => 'BC528686B50D79E339D3721CEB3E94ADBE1229CF',
      'server' => 'pgp.mit.edu',
    },
  }
  
}
