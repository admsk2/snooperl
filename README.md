# snooperl
Small application written in **PERL** to find defined string among specific files and replace it with another one. Useful with larger amount of files, where you can not do such replacement manually.

## Environment
First, make sure you have PERL (at least v5.18.2) environment installed on your machine. If you are not *Windows* user, PERL is included in your OS. Just make an update.

For further informations:
[https://www.perl.org/get.html](https://www.perl.org/get.html)

## Usage
Open terminal window, go to the folder and type:
```
perl snooperl.pl
```
There are prompts included in program, so you get through smoothly.

### Steps

1. Type the path to files you want to operate on.
For example:
> ../*

Selects all files from upper level of file structure.

2. Give the file extension of files you look for.
For example:
> .txt or just txt

Selects all .txt files.

If you type these information correctly, you will recieve info how many files were found.

3. Type the string you want to replace. (The one which is currently in files)
For example:
> Life is a beach.

4. Type the string you want to put in. (The one which is not in files yet)
For example:
> Water is wet.

That's is. If the string was found among files, you will recieve information how many times. If not, you will get this info too.
