# Public: Configuration for PhantomJS module

class phantomjs::params {
  case $::osfamily {
    Darwin: {
      include boxen::config

      $phantomenv_user = $::boxen_user
      $phantomenv_root = "${boxen::config::home}/phantomenv"
    }

    default: {
      $phantomenv_user = 'root'
      $phantomenv_root = '/usr/local/share/phantomenv'
    }
  }

  $phantomenv_repository = 'wfarr/phantomenv'
  $phantomenv_version    = '57675f2ea71c076035d8a61fa04bfe62eaf60762'
}
