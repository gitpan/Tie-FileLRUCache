use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'           => 'Tie::FileLRUCache',
    'VERSION_FROM'   => 'lib/Tie/FileLRUCache.pm',
    'PREREQ_PM'      => { 
                          'Digest::SHA1'      => 0,
                          'Storable'          => 0,
                          'Class::NamedParms' => 0,
                          'Class::ParmList'   => 0,
                          'Carp'              => 0,
                         },
    'linkext'        => { LINKTYPE => '' },    # no link needed
    'dist'           => { 'COMPRESS' => 'gzip -9f', 
                            'SUFFIX' => 'gz',
                               'ZIP' => '/usr/bin/zip',
                          'ZIPFLAGS' => '-rl'
                        }
);
