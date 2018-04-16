## Components

Vertical:

## What are they?

Components are the individual pieces of a user interface. They use `render` to return UI elements.

```jsx
class Greeting extends React.Component {
  render () {
    return <h1>Hello World!</h1>
  }
}
```

Vertical:

## Props

Props are the attribute arguments of a component. They are read-only.

```jsx
class Greeting extends React.Component {
  render () {
    const { name, color } = this.props
    return <h1 style={{ color }} >Hello {name}!</h1>
  }
}
```

Vertical:

## State

State is internal component data that can change over time. It is set once and modified with `setState`.

```jsx
class Greeting extends React.Component {
  constructor(props) {
    super(props)
    this.state = { color: 'red' }
  }
  onSomeEvent () {
    this.setState({ color: 'blue' })
  }
  render() {
    const { color } = this.state
    const { name }  = this.props
    return <h1 style={{ color }}>Hello {name}!</h1>
  }
}
```

Vertical:

## Composition

Components can be used like XML elements in JSX. Component elements are always capitalized.

```jsx
class App extends React.Component {
  render () {
    <Greeting name='World' />
  }
}

ReactDOM.render(<App />, document.getElementById('root'))
```

Vertical:

## Lifecycle

Every react component has a lifecycle. You can hook into a component's lifecycle with methods.

![Component Lifecycle](https://www.codevoila.com/uploads/images/201607/reactjs_component_lifecycle_functions.png)
