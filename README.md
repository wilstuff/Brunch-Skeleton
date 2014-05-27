Simple Brunch skeleton
===============

Bootstrap 3, SASS/SCSS, Stylus, Jade

- Eveything in */dev/static/* goes to */public/*
- Put any type (SASS, SCSS, Stylus, CSS) of style files in */dev/stylesheetes/*. They will be compiled in */public/css/*
- Put your jade files in */dev/jade-templates/*. They will be compiled at the */public/* root.

## Using

### Install
> ~ npm install
  
  
### Add module
> ~ npm install --save <module_name>
  
  
### Workflow (DEV)
> ~ npm start
(or ~ brunch watch --server -e DEV)
  
### Build for production

> ~ brunch build --production
