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

    def self.find_by_id(id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM users WHERE id = #{id}")
        User.new(data.first)
    end

    def initialize(options)
        @id = options['id']
        @fname = options['fname']
        @lname = options ['lname']
    end

end

class Question

    def self.find_by_id(id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM questions WHERE id = #{id}")
        Question.new(data.first)
    end
    
end

class QuestionFollow

    def self.find_by_id(id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM questions_follows WHERE id = #{id}")
        QuestionFollow.new(data.first)
    end
    
end

class Reply

    def self.find_by_id(id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM replies WHERE id = #{id}")
        Reply.new(data.first)
    end
    
end

class QuestionLike

    def self.find_by_id(id)
        data = QuestionsDatabase.instance.execute("SELECT * FROM question_likes WHERE id = #{id}")
        QuestionLike.new(data.first)
    end

end