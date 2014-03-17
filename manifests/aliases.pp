define postfix::aliases(
  $email,
  $template_file = 'postfix/common/etc/aliases.erb',
) {
  file { $name:
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    alias   => 'aliases',
    content => template($template_file),
    notify  => Exec['newaliases'],
    require => Package['postfix'],
  }
}
