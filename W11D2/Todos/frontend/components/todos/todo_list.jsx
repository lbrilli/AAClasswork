//presentational component
import React from 'react';
import TodoListItem from './todo_list/todo_list_item';

const TodoList = (props) => {
    const todos = props.todos;

    return (
        <div>
            <h1>My To-do List</h1>
            <ul>
                <TodoListItem />
            </ul>
        </div>

    )
}

export default TodoList;
// export default () => <h3>Todo List goes here!</h3>

// {todos.map(todo => <li key={todo.id}>{todo.title}</li>)}
