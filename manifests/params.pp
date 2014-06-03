class postfix::params {

  case $::lsbdistcodename {
    'saucy', 'final', 'lenny', 'squeeze', 'maverick', 'natty', 'trusty': {
      #$email = hiera('email')
      #$host  = hiera('host')
    }
    default: {
      fail("Module ${module_name} does not support ${::lsbdistcodename}")
    }
  }
}
