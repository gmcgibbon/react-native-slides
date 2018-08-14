## The React Native Framework

Vertical:

## Components

As we've seen, React Native provides basic UI elements for your app. There's also platform specific ones.

```jsx
import React, { Component }          from 'react'
import { View, Text, DatePickerIOS } from 'react-native'

export default class Form extends Component {
  render () {
    return (
      <View>
        <Text>When's your birthday?</Text>
        <DatePickerIOS />
      </View>
    )
  }
}
```

Vertical:

## APIs

React Native provides APIs for essential functionality like storage, animation, camera access, and more.

```jsx
import { AsyncStorage } from 'react-native'

const getKey = async () => {
  const value = await AsyncStorage.getItem('@App:key')
  return JSON.parse(value || '{}')
}
const setKey = async (value) => {
  await AsyncStorage.setItem('@App:key', JSON.stringify(value))
  return value
}
```

Vertical:

## Third Party Libraries

There are a ton of awesome libraries you can use. React Native is still young, but its very well supported.

```jsx
import React, { Component } from 'react'
import { View, Text }       from 'react-native'
import { StackNavigator }   from 'react-navigation'

class HomeScreen extends Component {
  render() {
    return <View><Text>Home Screen</Text></View>
  }
}
export default StackNavigator({ Home: { screen: HomeScreen }})
```
