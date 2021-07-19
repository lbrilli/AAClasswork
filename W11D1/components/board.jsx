import React from "react";
import Tile from './tile';

class Board extends React.Component {
    constructor(props) {
        console.log(props);
        super(props)
        this.renderRows = this.renderRows.bind(this);
        this.renderTiles = this.renderTiles.bind(this);
    }

    render () {
        let grid = this.props.board.grid;
        console.dir(grid);

        return (
            <div id="board">
                {this.renderRows()}
            </div>
        )
    }

    renderRows() {
        let board = this.props.board;
        return board.grid.map( (row, i) => {
            return (
                <div className="row" key={`row-${i}`}>
                    {this.renderTiles(row, i)}
                </div>
            )
        });
    }

    renderTiles(row, i) {
        let board = this.props.board;
        return row.map( (tile, j) => {
            return (
                <Tile
                    tile={tile}
                    updateGame={this.props.updateGame}
                    key={i * board.gridSize + j} 
                />
            )
        })
    }
}

export default Board;