class sun-java::java6 {
  $packagelist = ['sun-java6-bin', 'sun-java6-jdk', 'sun-java6-jre' ]

  package { $packagelist:
    ensure       => installed,
    require      => File['sun-java6.preseed'],
    responsefile => '/var/cache/debconf/sun-java6.preseed',
  }

  file { 'sun-java6.preseed':
    path   => '/var/cache/debconf/sun-java6.preseed',
    source => 'puppet:///sun-java/sun-java6.preseed',
  }
}
