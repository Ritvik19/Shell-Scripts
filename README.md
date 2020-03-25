# Shell-Scripts
Shell Scripts for data processing

* `columns` : prints header of all columns
    * `-f` [file path]
* `duplicates` : prints duplicate rows and number of times they are repeated
    * `-f` [file path]
* `filter-rows` : prints all the rows having the given value
  *  `-f` [file path]
  *  `-v` [value to filter]
  *  `-i` [insentivite string matching]
  *  `-r` [invert query]
* `head` : prints first n rows
    * `-f` [file path]
    * `-r` [number of rows]    
* `max-col` : prints max value of a column
    * `-c` [column number]
    * `-f` [file path]
* `min-col` : prints min value of a column
    * `-c` [column number]
    * `-f` [file path]
* `n-most-common` : prints most common 'n' values from a column
    * `-c` [column number]
    * `-f` [file path]
    * `-n` [number of values]
* `remove-duplicates`: removes duplicate lines from the csv file and saves it
  * `-s` [source file path]
  * `-d` [destination file path]
* `replace`: replace some values from the csv file and saves it
  * `-s` [source file path]
  * `-d` [destination file path]
  * `-f` [find value]
  * `-r` [replace value]
* `tail` : prints last n rows
    * `-f` [file path]
    * `-r` [number of rows]
* `unique` : prints unique values of a column
    * `-c` [column number]
    * `-f` [file path]
* `value-counts` : prints value counts of a column
    * `-c` [column number]
    * `-f` [file path]