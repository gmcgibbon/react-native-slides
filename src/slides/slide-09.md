## JSX

Vertical:

## What is it?

JSX is an extension of JavaScript that allows us to use XML syntax when declaring UI elements.

```jsx
let greetingElement = <h1>Hello World!</h1>
```

Vertical:

## Why use it?

JSX can be thought of as syntactic sugar for the `React.createElement` function. It's much easier to read deeply nested markup than function calls.

```jsx
let deepGreetingElement = (
  <div>
    <span>
      <h1>Hello World!</h1>
    </span>
  </div>
)
```

Vertical:

## Attributes

Like XML, you can specify attributes in JSX. Specific attribute usage will make more sense later.

```jsx
let list = (
  <ul className="shopping-list">
    <li key="1">Apples</li>
    <li key="2">Oranges</li>
  </ul>
)
```

Vertical:

## Interpolation

You can safely interpolate values into JSX. This includes anything from user input to child elements.

```jsx
let items          = [{ id: 1, name: "Apples" }]
let listAttributes = { id: className: "shopping-list" }
let listItem       = items.map((item) => {
  return <li key={item.id}>{item.name}</li>
})
let list = <ul { ...listAttributes } >{listItems}</ul>

```
