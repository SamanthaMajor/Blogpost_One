# Title: Getting Started with CSS in 11ty: A Beginner's Guide

## Introduction:
CSS (Cascading Style Sheets) plays a crucial role in styling web pages, ensuring they look visually appealing and engaging. When using 11ty (Eleventy) to build your website, understanding how to integrate and manage CSS is fundamental. In this guide, we'll walk you through the basics of CSS in 11ty, covering how to include external stylesheets, inline styles, and how to leverage TailwindCSS for rapid styling.

## Purpose:
The purpose of this guide is to provide clear and detailed instructions on how to work with CSS in 11ty, catering to beginners who may be new to web development or transitioning from other platforms. By following these instructions, users will gain a solid understanding of how to effectively manage CSS within their 11ty projects, enabling them to customize the appearance of their websites with ease.

## Instructions:

1. External Stylesheets:

- Create a new CSS file in your project directory, e.g., styles.css.
Define your CSS styles within this file, such as:

```css
body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
}

.container {
  max-width: 960px;
  margin: 0 auto;
}

/* Add more styles as needed */

```
- To include this stylesheet in your 11ty project, you can reference it in the HTML layout file (usually _includes/layouts/base.njk):

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{{ title }}</title>
  <link rel="stylesheet" href="/path/to/styles.css">
</head>
<body>
  {% block content %}
  {% endblock %}
</body>
</html>
```
- Replace /path/to/styles.css with the correct path to your CSS file.

2. Inline Styles:
- Alternatively, you can apply styles directly within your HTML templates using inline styles. For example:

```html
<div style="background-color: #ffffff; padding: 20px;">
  <h1 style="color: #333333;">Welcome to My Website</h1>
  <p style="font-size: 16px;">This is a paragraph with inline styles.</p>
</div>
```
- Inline styles are useful for applying unique styles to specific elements without creating separate CSS files.

3. Using TailwindCSS:
- TailwindCSS is a utility-first CSS framework that provides pre-designed styles you can apply directly to your HTML elements.

- Install TailwindCSS in your project using npm or yarn:

```
npm install tailwindcss
```
or 
```
yarn add tailwindcss
```
- Create a TailwindCSS configuration file by running:
```css
/* styles.css */
@import "tailwindcss/base";
@import "tailwindcss/components";
@import "tailwindcss/utilities";
```
- Now you can use TailwindCSS classes directly in your HTML templates:
```html
<div class="bg-white p-4">
  <h1 class="text-black">Welcome to My Website</h1>
  <p class="text-lg">This is a paragraph styled with TailwindCSS.</p>
</div>
```
## Discussion:
Understanding how to work with CSS in 11ty is essential for customizing the appearance and layout of your website. By following the instructions outlined in this guide, you'll be equipped with the knowledge to include external stylesheets, apply inline styles, and leverage the power of TailwindCSS for efficient styling. Whether you prefer traditional CSS or a utility-first approach like TailwindCSS, mastering CSS in 11ty opens up endless possibilities for designing visually stunning websites.