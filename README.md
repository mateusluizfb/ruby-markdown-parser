## Ruby Markdown Parser

### Goals

- Every text that aren't inside a list or header will be a `<p></p>`
- _Italics_ to `<em></em>`
- __Bold text__ to `<strong></strong>`
- Headers with N #'s will be `<h'N'></h'N'>`
- Lists like:
    ```
      * Item 1
      * Item 2
    ```
  Will be: `<ul><li>Item 1</li><li>Item 2</li></ul>`

- All the elements above can be mixed to gerenate a html. Example:
  ```
    ## List
    This is a __list__

    * _italic item_
    * normal item
    * __bold item__
  ```
  Will be:
  ```
    <h2> List </h2>
    <p> This is a <strong> list </strong> </p>

    <ul>
      <li><em>italic item</em></li>
      <li>normal item</li>
      <li><strong>bold item</strong></li>
    </ul>
  ```
