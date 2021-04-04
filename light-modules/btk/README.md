# BTK - Bootstrap Templating Kit for Magnolia CMS

Create simple websites with Magnolia CMS and Bootstrap.

Developed on **Magnolia 6.0.0**. Using **Bootstrap 4.3.1**.

If something doesn’t work, please contact us:

- Tomáš Gregovský <tomas.gregovsky@magnolia-cms.com>
- Bartosz Staryga <bartosz.staryga@magnolia-cms.com>

## Installation

### Magnolia CLI

Run in Magnolia's folder:

```
mgnl install btk
```

### Git

Clone [BTK repository](https://git.magnolia-cms.com/projects/LIGHT-MODULES/repos/btk/) into Magnolia's light modules folder.

## User Guide

When creating new page **Home [#btk]**, **Page [#btk]** and **Search [#btk]** templates will be available.

Use **Home [#btk]** for root page, **Page [#btk]** for subpages. **Search [#btk]** as a root child will enable search functionality.

### Demo page

Inside the module you can find **BTK-Template** demo page that is fully build with BTK. Demo page serves also as full documentation on BTK's page templates and components.

To see demo page you have to:

- import `/btk/demo/dam.BTK-Template.xml` into dam workspace (remember to import into folder and then move it to root)
- import `/btk/demo/website.BTK-Template.xml` into website workspace

## What’s Included?

Your module will have everything you need to build a modern website with Magnolia CMS and Bootstrap.

Pages:

- Home
- Page
- Search

Components:

- Accordion
- Button
- Card
- Carousel
- Divider
- Heading
- Image
- Jumbotron
- Modal
- Row
- Text

## Source files

Compile Bootstrap with your own asset pipeline by using source Sass, JavaScript files in `webresources-src`.

Should you require build tools, they are included for developing Bootstrap.

```
npm i
npm run build
```

## License

Create React App is open source software [licensed as MIT](https://git.magnolia-cms.com/projects/LIGHT-MODULES/repos/btk/browse/LICENSE).
