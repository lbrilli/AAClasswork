import React from 'react';

import Clock from './clock'

const Widgets = (props) => {
    return (
        <div className="widgets">
            <h1>Here are our widgets:</h1>
            <clock/>
        </div>
    )
}

export default Widgets;