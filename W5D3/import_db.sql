PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    user_id INTEGER NOT NULL,
    
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE questions_follows (
    id INTEGER PRIMARY KEY,
    users_id INTEGER NOT NULL,
    questions_id INTEGER NOT NULL,

    FOREIGN KEY(users_id) REFERENCES users(id),
    FOREIGN KEY(questions_id) REFERENCES questions(id)
);

CREATE TABLE replies (
    id INTEGER PRIMARY KEY,
    questions_id INTEGER NOT NULL,
    users_id INTEGER NOT NULL,
    parent_reply_id INTEGER,
    body TEXT NOT NULL,

    FOREIGN KEY(questions_id) REFERENCES questions(id),
    FOREIGN KEY(parent_reply_id) REFERENCES replies(id),
    FOREIGN KEY(users_id) REFERENCES users(id)
);

CREATE TABLE question_likes (
    id INTEGER PRIMARY KEY,
    questions_id INTEGER NOT NULL,
    users_id INTEGER NOT NULL,

    FOREIGN KEY(questions_id) REFERENCES questions(id),
    FOREIGN KEY(users_id) REFERENCES users(id)
);

INSERT INTO
    users (fname, lname)
VALUES
    ('Luca','Brilli'),
    ('Will','Rittwage');

INSERT INTO
    questions (title, body, user_id)
VALUES
    ('Why does Mike have a whiteboard?', 'Seriously, why doesn''t Mike ever use his whiteboard?', 1),
    ('Why is the sky blue?', 'Seriously, why is the sky blue?', 2);
    
INSERT INTO
    questions_follows (users_id, questions_id)
VALUES
    (2,(SELECT id FROM questions WHERE title = 'Why does Mike have a whiteboard?')),
    (1, (SELECT id FROM questions WHERE title = 'Why is the sky blue?'));

INSERT INTO
    replies (questions_id, users_id, parent_reply_id, body)
VALUES
    (1, 2, NULL, 'Mike has it to stay organized'),
    (2, 1, NULL, 'because it is');

INSERT INTO
    question_likes (questions_id, users_id)
VALUES
    (1, 2),
    (2, 1);