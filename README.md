## Ruby Markdown Parser

### Goals (Source https://www.markdownguide.org/basic-syntax/)

- Every text that aren't inside a list or header will be a `<p></p>`
    ```
        Hello There
    ```
    
    Will be:
    ```
        <p>Hello There</p>
    ```
    
    
- `_Italics_` to `<em></em>`
- `__Bold text__` to `<strong></strong>`
- Headers with N #'s will be `<h'N'></h'N'>`
- Unordered lists like:
    ```
      * Item 1
      * Item 2
    ```
    Will be:
    ```
    <ul>
        <li>Item 1</li>
        <li>Item 2</li>
    </ul>
    ```

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

-------

### Bonus

- Every text that have a break line will be a paragraph. Example:
    ```
        Hello There
        
        General Kenobi!
    ```
    
    Will be:
    ```
        <p>Hello There</p>
        
        <p>General Kenobi</p>
    ```


- Ordered lists like
     ```
      1. Item 1
      2. Item 2
    ```
    Will be:
    ```
    <ol>
        <li>Item 1</li>
        <li>Item 2</li>
    </ol>
    ```

- Lists inside lists like:  
    ```
    - First item
    - Second item
    - Third item
        - Indented item
        - Indented item
    - Fourth item
    ```
    Will be:
    ```
    <ul>
        <li>First item</li>
        <li>Second item</li>
        <li>Third item
        <ul>
            <li>Indented item</li>
            <li>Indented item</li>
        </ul>
        </li>
        <li>Fourth item</li>
    </ul>
    ```

- If any HTML is given as an input, the output will be the HTML itself. Example:
  ```
    <div> <span> Hello There </span> </div>
  ```
  Will be:
    ```
    <div> <span> Hello There </span> </div>
  ```
- Can read from a `.md` file and output the html string
- Given a markdown string as an input, can create a `.html` file from it
- Can read a `.md` and create a `.html` from it
