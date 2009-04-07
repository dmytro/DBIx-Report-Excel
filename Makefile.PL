use 5.008008;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME              => 'SQL::Reporter::Excel',
    VERSION_FROM      => 'lib/SQL/Reporter/Excel.pm',
    PREREQ_PM         => {
			  Data::Tabular::Dumper => 0.06,
			  Data::Tabular::Dumper::Excel => 0.06,
			  SQL::Parser => 1.16,
			  SQL::Script => 1.05,
			  YAML => 0.68,
			 },
    ($] >= 5.005 ?
      (ABSTRACT_FROM  => 'lib/SQL/Reporter/Excel.pm', # retrieve abstract from module
       AUTHOR         => 'Dmytro Kovalov <dmytro.kovalov@gmail.com>') : ()),
);
