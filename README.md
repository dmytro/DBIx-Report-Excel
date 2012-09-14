DBIx-Report-Excel version 0.3
=============================


[![Build Status](https://secure.travis-ci.org/dmytro/DBIx-Report-Excel.png)](http://travis-ci.org/dmytro/DBIx-Report-Excel)

DBIx::Report::Excel's goal is to make creating reports in MS Excel
format from database easy. It's aimed at SQL developers and/or DBA's
who don't know much about Perl programming. I.e. most of the
information needed to create Excel file is provided directly in SQL
statement (script) itself.

If SQL script contains multiple statements, resulting Excel file is
formatted as multi-page spreadsheet with each result set on it's own
worksheet.


INSTALLATION
------------

To install this module type the following:

````shell
   perl Makefile.PL
   make
   make test
   make install
````

DEPENDENCIES
------------

This module requires these other modules and libraries:

````
DBI
Data::Tabular::Dumper
Data::Tabular::Dumper::Excel
Spreadsheet::WriteExcel
SQL::Parser
SQL::Script
YAML
````

SOURCE CODE
-----------

Source code of this module is hosted at Github. Latest version always 
available from https://github.com/dmytro/DBIx-Report-Excel.


COPYRIGHT AND LICENCE
---------------------

Put the correct copyright and licence information here.

Copyright (C) 2009, 2010, 2011 by Dmytro Kovalov

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.
