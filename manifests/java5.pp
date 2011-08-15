class sun-java::java5 {
  $packagelist = ['sun-java5-bin', 'sun-java5-jdk', 'sun-java5-jre' ]

  package { $packagelist:
    ensure       => installed,
    require      => File['sun-java5.preseed'],
    responsefile => '/var/cache/debconf/sun-java5.preseed',
  }

  file { 'sun-java5.preseed':
    path   => '/var/cache/debconf/sun-java5.preseed',
    source => 'puppet:///sun-java/sun-java5.preseed',
  }
}
