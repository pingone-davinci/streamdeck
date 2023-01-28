# pingone-davinci-ui-templates
A set of UI templates that adhere to Ping's standard UI design.

## Usage
To use the included snippets, please add the following CSS files to your DaVinci flow or client application
* https://assets.pingone.com/ux/end-user-nano/0.1.0-alpha.1/end-user-nano.css
* https://assets.pingone.com/ux/astro-nano/0.1.0-alpha.1/icons.css
* https://assets.pingone.com/ux/astro-nano/0.1.0-alpha.4/icons.css

You'll need to create CSS file that defines the logo class (companyLogo). To use Ping's official logo add the following class

```css

.companyLogo {
  /* Ping Logo  */
  content: url("https://assets.pingone.com/ux/ui-library/5.0.2/images/logo-pingidentity.png");
  width: 65px;
  height: 65px;
}
```
**NOTE** A default css file which includes the Ping logo is available from within the [CSS](/css) directory

## Placeholders
For many of the HTML snippets, placeholder text has been added that will require updating based on your form/field, title, text values.

Text that requires updating begins and ends with a double underscore eg. `__TITLE_TEXT__`