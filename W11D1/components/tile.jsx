import React from 'react';

class Tile extends React.Component {
    constructor(props) {
        super(props);
        this.handleClick = this.handleClick.bind(this);
    }

    // check if flagged
    // first check if explored
    // based on that we decide bomb or no bomb

    render() {
        let tile = this.props.tile;
        // console.dir(tile)
        let klass;
        let text;
        // console.log(tile.bombed)
        
        if (tile.flagged) {
            klass = "flagged"
            text = '🚩'
        } else {
            if (tile.explored) {
                klass = "explored";
                if (!tile.bombed) {
                    klass = "bombed"
                    text = '💣'
                } else if(tile.adjacentBombCount()) {
                    text = tile.adjacentBombCount().toString();
                }
            }
        }
        // console.log(klass)
        // console.log(text)
        
        return (
            <div className={`tile ${klass}`} onClick={this.handleClick}>{text}</div>
        )
    }
    
    handleClick(e) {
        // console.dir(e);
        this.props.updateGame(this.props.tile, e.altKey)
    }

    
}

export default Tile;