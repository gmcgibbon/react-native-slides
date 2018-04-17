## The React Native Platform

Vertical:

## More than JavaScript

By this point, you may have guessed that React Native is powered by more than just JavaScript. Let's take a look into how its native internals work.

Vertical:

## Building

React Native uses Babel to transpile your app's ES6 into plain old JavaScript. Then, it is packaged with some polyfills and bundled as an asset of a native app.

![Babel Logo](https://raw.githubusercontent.com/babel/logo/master/babel.png)

Vertical:

## Threading

During runtime, there are two critical threads in a React Native app:

- Main: Low level native concerns are executed here.
- JavaScript: Your app's JavaScript is executed here.

Vertical:

## The "Bridge"

React Native manages communication between the two threads through a bridge interface. Bridged communication is asynchronous and non-blocking.

![React vs React Native](https://image.slidesharecdn.com/l1-reactnativeintroduction-160816150540/95/react-native-introduction-making-real-ios-and-android-mobile-app-by-javascript-20-638.jpg?cb=1485406349)
