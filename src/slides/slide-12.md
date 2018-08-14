## What's the difference?

Vertical:

## Where's the DOM?

As all mobile developers know, mobile apps don't have a DOM (Document Object Model) like browsers do. How does React Native work without a DOM?

Vertical:

## Components to the Rescue!

React Native provides components to use in place of DOM elements. These hook into native UI classes.

```jsx
import React    from 'react'
import { Text } from 'react-native'

export default class Greeting extends React.Component {
  render () {
    return <Text>Hello World!</Text>
  }
}
```

Vertical:

## What about Stylesheets?

You can define stylesheets in JavaScript with the `StyleSheet` API and style props.

```jsx
import React                from 'react'
import { Text, StyleSheet } from 'react-native'

const styles = StyleSheet.create({
  greeting: { color: 'red' }
})
export default class Greeting extends React.Component {
  render () {
    return <Text style={styles.greeting}>Hello World!</Text>
  }
}
```
