class Bowling
    def initialize
        @total_score = 0
        @scores = []
        @temp = []
    end
    def add_score(pins)
        @temp << pins
        if @temp.size==2
            @scores << @temp
            @temp = []
        end
        # @total_score += pins
    end
    def total_score
        @total_score
    end
    def calc_score
        @scores.each.with_index(1) do |score, index|
            @total_score += score.inject(:+)
            if is_spare?(score)
                @total_score += calc_spare_bonus(index)
            end
        end
    end
    
    private
    def
        is_spare?(score)
        score.inject(:+) == 10
    end
    def not_last_frame?(index)
        index < 10
    end    
    def calc_spare_bonus(index)
        if @scores[index]
            @scores[index].first || 0
        else
            @temp.first || 0
        end    
    end    
    
end
