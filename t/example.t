# Example script for DBIx::Report::Excel.pm module.
# See pod documentation in the module file.
use Test::More tests => 2;
use strict;
use DBIx::Report::Excel;
use DBI;
use DBD::SQLite;

my $output = "t/tmp/SQLite.xls";
my $testdb = "t/tmp/testdb";
mkdir "t/tmp";
unlink $output, $testdb;

system("sqlite3 $testdb < t/data/example.sql ") ==  0 or die "Cannot create test DB: $?";

my $report = DBIx::Report::Excel->new( $output );

$report->dbh(DBI->connect("dbi:SQLite:dbname=$testdb","",""));


				# First worksheet has name People
				# Names and defined column aliases
				# "First Name" and "Family Name".
$report->sql(
    qq
    {
/****    ---
title: People Names
---*/
SELECT first_name as "First Name", last_name as "Family name" FROM people
    });
$report->write();

				# Examples below have optional SQL
                                # parameter for write() method.

				# Generic worksheet name Sheet2 and
                                # column names f_name, color obtained
                                # from parsing SQL.
$report->write("SELECT f_name, color from fruits");

				# Generic worksheet name Sheet3 and
				# generic column names Column1,
				# Column2.
$report->write("SELECT * from fruits");


				# Two SQL statements in one write()
				# call. Both SQL's define worksheet
				# name as YAML structure data. 1st SQL
				# - column names f_name, color. @nd
				# SQL: generic column names ColumnX.
$report->write(
    qq 
    {
/* 
---
title: Fruits
---
*/
	SELECT f_name, color from fruits;

/* 
---
title: More Fruits
---
*/
	SELECT * from fruits
    }
    );

$report->close();
ok( -f $output);
ok( -s $output ne 0);
