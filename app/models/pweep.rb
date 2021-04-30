class Pweep < ApplicationRecord
    validates :body, presence: true
  belongs_to :utilisateur
  has_many :pourtag
  before_create :before_create
  after_create :after_create

  def before_create
    table = self.body.split(/ /, -1)
    pourtags_in_pweep = []
    table.each_with_index do | word, index |
      if word.start_with?("%")
        table[index] = "<a href='?pourtag="+word[1..-1]+"' class='text-pweep-blue'>"+word+"</a>"
        pourtags_in_pweep.push(word)
      end
    end
    self.body = table.join(' ')
  end

  def after_create
    val = self.body.split(/ /, -1)
    val.each do | word |
      if word.start_with?("href='?pourtag=")
       Pourtag.create(label: word[15..-2], pweep_id: self.id)
      end
    end
  end


end
