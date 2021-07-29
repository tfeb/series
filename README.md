# Series
This repo contains a copy of Richard C. Waters' Series package for Common Lisp.  This repo derives from two existing  locations for the package, both linked from [CLiki](https://www.cliki.net/Series):

- Sourceforge [project](https://sourceforge.net/projects/series/), [description](http://series.sourceforge.net/);
- [GitHub](https://github.com/tokenrove/series).

Of these, the GH repo is simply a mirror of the SF one, although it is independently maintained.  At the time of writing neither of these copies of the package have been updated since 2013.  The SF version is the closest thing to a canonical one, I think.

Series is available in [Quicklisp](https://www.quicklisp.org/beta/), originating from the SF version (again, at the time of writing).

## Why another copy?
I have some historical interest in Series, having used it in the 1990s, and I don't want it to fade away.  The versions in the above repos have a number of problems:

- the ASDF system definitions were old and caused ASDF to complain;
- the installation process involved calling `series::install`, a symbol not exported from the `SERIES` package.
- the tests were not realistically runnable at all, and to the extent they were they unilaterally installed Series in `CL-USER`;
- there were a number of other problems with the tests;
- there were various other problems.

What I want to do is to initially make and look after a version which deals with problems like the above, with the intent of either returning the changes needed to do this to a more official repo or, if the existing maintainers no longer have time to look after it, of perhaps eventually becoming an official home for Series (I'd prefer to avoid this outcome).

What I *don't* want to do is to produce some radically different, incompatible version of Series: I want to make only fairly cautious changes.

As of today (29th July 2021) I've spoken to the owner of the GH repo, who only created it in order to have a more accessible mirror of the SF one and is not interested in becoming the authoritative source.  I've asked one of the people named in the SF repo but not yet had a reply.

## What is currently here (interim state of 29th July 2021)
The tip of the `upstream` branch corresponds to the older two repos (in particular to [the GH repo it's forked from's `master` branch](https://github.com/tokenrove/series), and will continue to track any changes to those repos.

The `revival` branch (not merged to `main` yet) contains my changes, and is currently the default branch in this GH repo.

At the point where I'm convinced changes I've made aere OK then I'll merge things to `main` & make some kind of GH release.

Currently the `revival` branch is the default in the GH repo: this will change to `main` in due course.

The `ChangeLog` has some descriptions of the changes.  Some old things (including the old `ChangeLog`, which last seems to have changed in 2000) have been moved to `old`.