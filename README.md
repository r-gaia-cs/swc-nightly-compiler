# Software Carpentry Nightly Compiler

Collection of scripts to build nightly version of lessons.

## Configuration

The list of lessons to build
and the directory to do it
are at `lessons.sh`.

## Setup

Run

~~~
$ ./setup.sh
~~~

to download the lessons.

Run

~~~
$ ./build.sh
~~~

to check if the lessons are compile properly.

Run

~~~
$ echo "0 0 * * * cd $(pwd) && ./build.sh"
~~~

and add the output to cron.
To get the list of cron jobs, run

~~~
$ crontab -e
~~~
