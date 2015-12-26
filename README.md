# Curriculum Vitae
This is a simple boilerplate for a résumé using [LaTeX](https://www.latex-project.org) and [Pandoc](http://pandoc.org).

## Getting Started
You can put the content of your CV in the `data.yml` file, like this:

```YAML
---
name: Friedrich Nietzsche
email: friedrich@nietzsche.de
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
    - years: 1869--1879
      job: Professor für klassische Philologie
      employer: Universität Basel
      city: Basel
      tasks:
          - Teach classic philology.
```
It makes it much easier to update while keeping a consistent structure.

If you want to add new sections, check `cv.tex` to see how it's done and edit it as you wish.

## License
This project is licensed under the terms of the [MIT license](https://opensource.org/licenses/MIT).
