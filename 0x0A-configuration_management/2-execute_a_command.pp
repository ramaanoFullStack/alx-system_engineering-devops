# kill process killmenow

exec { 'killmenow':
  path    => ['/usr/bin', '/usr/sbin', '/bin'],
  command => 'pkill -9 killmenow',
}
