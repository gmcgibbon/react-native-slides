## Intuition

Vertical:

## Componentization

React UIs can be broken down into individual pieces.

![UI List](https://reactjs.org/static/thinking-in-react-mock-1071fbcc9eed01fddc115b41e193ec11-4dd91.png)
![UI List Highlighted](https://reactjs.org/static/thinking-in-react-components-eb8bda25806a89ebdc838813bdfa3601-82965.png)

Vertical:

## Composition over Inheritance

Facebook advises against inheritance. Instead, they suggest using composition. More specifically, extending component classes is discouraged.

Vertical:

## Data Flow

In a React app, data flows in one direction only. This is true for data binding, data transformations, component hierarchies.

Vertical:

## Immutability

Everything except state should be considered immutable. React developers make use of `const`, `Object.assign`, and third party libraries to avoid unwanted mutations.
