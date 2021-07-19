import React from 'react';
import ReactDOM from 'react-dom';
import Game from './components/game';

document.addEventListener("DOMContentLoaded", () => {
    
    let game = document.getElementById('game');
    ReactDOM.render(<Game />, game)
});

console.log('hello');