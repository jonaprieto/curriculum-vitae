# My Curriculum Vitae

Save your time making and updating your CV for the next time. 
This is a simple boilerplate for my résumé using [LaTeX](https://www.latex-project.org) and [Pandoc](http://pandoc.org). This is how it looks:

![Preview](https://github.com/jonaprieto/curriculum-vitae/blob/master/cv.png?raw=true)


## Getting Started
You can start cloning this repository or forking it on github.

```Bash
   $ git clone https://github.com/jonaprieto/curriculum-vitae
```

Be aware, you must have installed `pandoc` and of course some distribution of `Latex`.

Now, try it on your favorite editor opening the file `data.yml`. Check the structure
of this file and how we should put our information. 
If you didn't find out something like a section for your cv, open an
issue on this repository, and I will add it as soon as possible. Enjoy it!

## A Small Example

You can put the content of your CV in the `data.yml` file, like this:

```YAML
---
name: Friedrich Nietzsche
intro: Some introduction to resume here
email: friedrich@nietzsche.de
website:
  primary: jonaprieto.github.io
  secondary: another.github.com

phone:
    primary: +49 (0) 3643-545-630
    secondary: +49 (0) 3643-545-639
address:
    line1: Humboldtstr. 36
    line2: 99425 Weimar

experience:
    - years: 1879--1889
      job: Freier Philisoph
      employer: Freiberufler
      city: Sils-Maria
      task:
        - name: Lecturer of Physcology.
          years: 1880
    - years: 1869--1879
      job: Professor für klassische Philologie
      employer: Universität Basel
      city: Basel
      tasks:
          - Teach classic philology.
# Education
education:
    - years: 2016-present
      subject: Master in Applied Mathematics
      institute: EAFIT University
      city: Medellín
      tesis-title: Proof Reconstruction in \texttt{Agda} (Working on)
      tesis-advisor: Phd. Andrés Sicard-Ramiréz
 
# Skills
skills:
  - Speak Louder
  - Coding in the morning with a coffe.

# Technical Skills
tech:
  - lang: python
  - year: 2016-2020
  - domain: 30\%
  - proyects:
    - name: An amazing project
    - year: 2017
    - url: http://www.github.com/jonaprieto/
    - description: something to say
```

## Creating the PDF File

It makes it much easier to update while keeping a consistent structure.
Compile your CV running the following command:

```Bash
$ make
```
After the last execution of `make` command, you'll be available to
open the file `cv.pdf`. If something was wrong, check in your `data.yml` for
encondings, accentuation, or bad structure of listings.

## License
This project is licensed under the terms of the [MIT license](https://opensource.org/licenses/MIT).
