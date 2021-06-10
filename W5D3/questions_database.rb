require 'sqlite3'
require 'singleton'

class QuestionsDatabase < SQLite3::Database
    include Singleton

    def initialize
        super('questions.db')
        self.type_translation = true
        self.results_as_hash = true
    end

end

class User
    attr_accessor :id, :fname, :lname
    def self.find_by_id(id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM users WHERE id = #{id}")
        User.new(data.first)
    end

    def self.find_by_name(fname, lname)
        data = QuestionsDatabase.instance.execute("SELECT * FROM questions WHERE fname = #{fname} AND lname = #{lname}")
        Question.new(data.first)
    end

    def initialize(options)
        @id = options['id']
        @fname = options['fname']
        @lname = options ['lname']
    end

    def authored_questions
        Question.find_by_author_id(id)
    end
    
    def authored_replies
        Reply.find_by_user_id(id)
    end
end

class Question
    attr_accessor :id, :title, :body, :user_id
    def self.find_by_id(id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM questions WHERE id = #{id}")
        Question.new(data.first)
    end

    def self.find_by_author_id(author_id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM questions WHERE user_id = #{author_id}")
        data.map { |datum| Question.new(datum) }
    end
    
    def initialize(options)
        @id = options['id']
        @title = options['title']
        @body = options['body']
        @user_id = options['user_id']
    end

    def author
        User.find_by_id(@user_id)
    end

    def replies
        Reply.find_by_question_id(@id)
    end

end

class QuestionFollow
    attr_accessor :id, :users_id, :questions_id
    def self.followers_for_question_id(question_id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM users WHERE id = #{id}")
    end

    def self.find_by_id(id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM questions_follows WHERE id = #{id}")
        QuestionFollow.new(data.first)
    end
    
    def initialize(options)
        @id = options['id']
        @users_id = options['users_id']
        @questions_id = options['questions_id']
    end
end

class Reply
    attr_accessor :id, :parent_reply_id, :users_id, :questions_id, :body
    def self.find_by_id(id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM replies WHERE id = #{id}")
        Reply.new(data.first)
    end

    def self.find_by_user_id(user_id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM replies WHERE users_id = #{user_id}")
        data.map { |datum| Reply.new(datum) }
    end

    def self.find_by_question_id(question_id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM replies WHERE questions_id = #{question_id}")
        Reply.new(data.first)
    end

    def initialize(options)
        @id = options['id']
        @parent_reply_id = options['parent_reply_id']
        @users_id = options['users_id']
        @questions_id = options['questions_id']
        @body = options['body']
    end
    
    def author
        User.find_by_id(@users_id)
    end

    def question
        Question.find_by_id(@questions_id)
    end

    def parent_reply
        if @parent_reply_id == nil
            return "parent is NULL / top level reply"
        else
            Reply.find_by_id(@parent_reply_id)
        end
    end
    
    def child_replies
        # do SQL query that grabs all replies with the parent id of the current object
        # take that and turn into an array of reply objects
        data = QuestionsDatabase.instance.execute("SELECT * FROM replies WHERE parent_reply_id = #{id}")
        data.map { |datum| Reply.new(datum) }
    end
end

class QuestionLike
    attr_accessor :id, :users_id, :questions_id
    def self.find_by_id(id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM question_likes WHERE id = #{id}")
        QuestionLike.new(data.first)
    end

    def initialize(options)
        @id = options['id']
        @users_id = options['users_id']
        @questions_id = options['questions_id']
    end

end