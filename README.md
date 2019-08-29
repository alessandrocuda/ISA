# ISA
ISA is a ChatterBot AI, was born from the idea of developing an artificial intelligence expert in advising films and TV shows.   
ChatterBot is the generic name for programs derived from Weizenbaum's original Eliza program, which mimicked a therapist.
>ISA shows how pattern-matching rules can be used to generate realistic conversations. 

## Table of Contents 
- [Usage](#usage)
- [Example](#example)
- [Todo](#todo)
- [Support](#contributing)
- [License](#license)

## Usage
You need to install [swi-prolog](https://www.swi-prolog.org/): a Prolog interpreter 

```bash
# Clone ISA Project
git clone https://github.com/alessandrocuda/ISA.git

# Start swi-prolog
swipl

#Welcome to SWI-Prolog...
?- [start_isa].
```
or

```bash
# Start swi-prolog
swipl -s start_isa.pl
```



## Example
    Hi, I'm ISA your personal assistant for movies and TV show!
    > hi

    Hi, type "help" if you need help
    yes i need help

    Sure, I'm your personal assistant for movies and tv shows!
    For example you can ask me "what movie do you suggest me?" or "i want to watch a tv show"
    > i would like to watch a movie

    Oh, let me think ... maybe "Your Name"?
    > oh thanks

    Your Welcome!
    > 
or if you want to read some other examples: [USE_CASES.md](https://github.com/alessandrocuda/ISA/blob/master/USE_CASES.md)

## TODO
- [ ] Add more answers to ISA.

## Contributing
 
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

or write an email to:
- [alessandro@cudazzo.com](mailto:alessandro@cudazzo.com)
- [giuliavolpi25.93@gmail.com](giuliavolpi25.93@gmail.com)

## License
[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

This library is free software; you can redistribute it and/or modify it under
the terms of the MIT license. 

- **[MIT license](LICENSE)**
- Copyright 2019 ©  <a href="https://alessandrocudazzo.it" target="_blank">Alessandro Cudazzo</a> - [Giulia Volpi](giuliavolpi25.93@gmail.com)