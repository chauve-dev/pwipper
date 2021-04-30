require "test_helper"

class RelationTest < ActiveSupport::TestCase
  test "Can follow" do
    Ut1 = Utilisateur.create(nickname: "Chauve",
                             username: "baldus_maximus",
                             email: "jeantetjoey.pro@gmail.com",
                             password: "123",
                             bio: "Chauve un jour chauve toujours")

    Ut2 = Utilisateur.create(nickname: "era",
                             username: "era_dication",
                             email: "era@gmail.com",
                             password: "123",
                             bio: "Pas contente")
    follow = Relation.new(user_id: Ut1.id, follower_id: Ut2.id)
    assert follow.valid?
  end

  test "Cannot follow two time" do
    Ut1 = Utilisateur.create(nickname: "Chauve",
                             username: "baldus_maximus",
                             email: "jeantetjoey.pro@gmail.com",
                             password: "123",
                             bio: "Chauve un jour chauve toujours")

    Ut2 = Utilisateur.create(nickname: "era",
                             username: "era_dication",
                             email: "era@gmail.com",
                             password: "123",
                             bio: "Pas contente")
    Relation.create(user_id: Ut1.id, follower_id: Ut2.id)
    follow = Relation.new(user_id: Ut1.id, follower_id: Ut2.id)
    assert !follow.valid?
  end

end
