# snooperl
Small application written in **PERL** which searches for defined string among specific files and replaces it with another one.

Useful in situations where you can not do such replacement manually, e.g., you have 10000 files to deal with.

### Environment
First, make sure you have **PERL** _(at least v5.18.2)_ environment installed on your machine. If you are not a **_Windows_** user, **PERL** is included in your OS. Just make an update.

For further informations:

[https://www.perl.org/get.html](https://www.perl.org/get.html)

### Usage
Open terminal window, go to the folder and type:
```
perl snooperl.pl
```

### Steps

**1. Type the path to files you want to work on.**

For example:
```
../*
```
This will select all files from upper level of file structure according to current location (which is probably the folder with snooperl.pl).

**2. Specify the file extension of files you look for.**

For example:
```
.txt (or just txt)
```
This will select all .txt files.

If you pass these informations correctly, you will recieve info how many files were found.

**3. Type the string you want to replace. (The one which is present in selected files)**

For example:
```
Life is a beach.
```
**4. Type the string you want to put in. (The one which is NOT in selected files yet)**

For example:
```
Water is wet.
```

**That's it. If the string was found among files, you will recieve information how many times it has been replaced. If none, you will get this info too.**
