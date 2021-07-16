import React from 'react';
import ReactDOM from 'react-dom';

import Widgets from './widgets';

document.addEventListener("DOMContentLoaded", event => {
    const root = document.getElementById("root");

    ReactDOM.render(<Widgets />, root);
});