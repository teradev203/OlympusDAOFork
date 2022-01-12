/* eslint-disable global-require */
import { Component } from "react";
import { Provider } from "react-redux";
import { Router } from "react-router-dom";
import { Web3ContextProvider } from "./hooks/web3Context";
import { createBrowserHistory } from 'history'
import App from "./App";
import store from "./store";

const history = createBrowserHistory()

export default class Root extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <Web3ContextProvider>
        <Provider store={store}>
          <Router history={history}>
            <App />
          </Router>
        </Provider>
      </Web3ContextProvider>
    );
  }
}
