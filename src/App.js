import React from 'react';
import './css/app.css';
import Main from './component/Main.js';
import Hero from './component/Hero.js';
import Footer from './component/Footer.js';

class App extends React.Component {
  render() {
    return (
      <div className="app">
        <Hero />
        <Main />
        <Footer />
      </div>
    );
  }
}

export default App;
